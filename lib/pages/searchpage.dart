import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Material(
              elevation: 5.0,
              child: TextField(
                  style:TextStyle(color: Colors.black, fontSize: 16.0),
                  cursorColor: Theme.of(context).primaryColor,
                  decoration:InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                      suffixIcon: Material(
                          elevation: 2.0,
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          )
                      ),
                      border:InputBorder.none,
                      hintText: "Search Foods"
                  )
              ),
            ),
          ),
        ],
      ),

    );
  }
}