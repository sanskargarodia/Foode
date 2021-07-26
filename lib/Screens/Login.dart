import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  //checking user is already logged in
  checkAuthentication() async {
    _auth.onAuthStateChanged.listen((user) {
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/");
      }
    });
    @override
    void initState() {
      super.initState();
      this.checkAuthentication();
    }
  }

  login() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        FirebaseUser user = (await _auth.signInWithEmailAndPassword(
            email: _email, password: _password)) as FirebaseUser;
      } catch (e) {
        showerror(e.message);
      }
    }
  }

  showerror(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(errormessage),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            children: [
              Container(
                height: 400,
                child: Image(
                  image: AssetImage("assets/1.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                            validator: (val) =>
                                val.isEmpty ? 'Enter a Email' : null,
                            onChanged: (val) {
                              setState(() => _email = val);
                            },
                            //      validator: (input),
                            // {
                            // if(input.isEmpty)
                            // return "Enter Email"
                            // },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email)),
                            onSaved: (input) => _email = input),
                      ),
                      Container(
                        child: TextFormField(
                            validator: (val) => val.length < 6
                                ? 'Enter a Password with more than 6 characters'
                                : null,
                            onChanged: (val) {
                              setState(() => _password = val);
                            },
                            // validator: (input),
                            // {
                            // if(input.length<6)
                            // return "Enter Correct Password"
                            // },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.lock)),
                            obscureText: true,
                            onSaved: (input) => _password = input),
                      ),
                      RaisedButton(
                        onPressed: login,
                        padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.cyan,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
