import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final IconData icon;
  final String text;

  CustomListTile({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "$text",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class SmallButton extends StatelessWidget {

  final String btnText;

  SmallButton({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 60.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(
          "$btnText",
          style: TextStyle(color: Colors.blue, fontSize: 16.0),
        ),
      ),
    );
  }
}




