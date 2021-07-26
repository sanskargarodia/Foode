import 'package:flutter/material.dart';

class Restraunt_display extends StatefulWidget {
  const Restraunt_display({Key key}) : super(key: key);

  @override
  _Restraunt_displayState createState() => _Restraunt_displayState();
}

class _Restraunt_displayState extends State<Restraunt_display> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: dispform(),
      ),
    );
  }
}
// Create a Form widget.
class dispform extends StatefulWidget {
  @override
  Rest createState() {
    return Rest();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class Rest extends State<dispform> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_today),
                hintText: 'Enter img url',
                labelText: 'Url',
              ),
            ),

            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_today),
                hintText: 'Enter Description',
                labelText: 'Descrip',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter name of Restraunt',
                labelText: 'Name',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter location',
                labelText: 'location',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_today),
                hintText: 'Enter Description',
                labelText: 'Descrip',
              ),
            ),
            new Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: null,
                )),
          ],
        ),
      ),
    );
  }

}
