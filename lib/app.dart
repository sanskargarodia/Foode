import 'package:flutter/material.dart';
import 'package:food/mainscreen.dart';
import 'Screens/SignUp.dart';
import 'Screens/Start.dart';
import 'Screens/Login.dart';
class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Train Delivery",
      home: Bb() ,
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "start": (BuildContext context) => Start(),
      },

    );
  }
}
