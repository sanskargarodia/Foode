import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';

class Start extends StatefulWidget {
  const Start({Key key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}
// navigateToLogin() async{
//   Navigator.push(context, MaterialPageRoute(builder: context => Login()));
// }

class _StartState extends State<Start> {
  navigateToLogin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  navigateToRegister() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              height: 300,
              child: Image(
                image: AssetImage("assets/1.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
                text: TextSpan(
                    text: "WELCOME TO",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                    text: " FOODE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  )
                ])),
            SizedBox(
              height: 20.0,
            ),
            Text("Get Restaurant Food Delivered to your train seat"),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: navigateToLogin,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.cyan,
                ),
                SizedBox(
                  width: 10.0,
                ),
                RaisedButton(
                  onPressed: navigateToRegister,
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.cyan,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
