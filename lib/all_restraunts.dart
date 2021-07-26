import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/food_item_widget.dart';
import 'package:food/models/food_model_scoped.dart';


class All_restraunts extends StatefulWidget {
  @override
  _All_restrauntsState createState() => _All_restrauntsState();
}

class _All_restrauntsState extends State<All_restraunts> {
  List<Rest> _rests= rests;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Eateries",
          style: TextStyle(
            color: Colors.black
          ),),
          centerTitle:true ,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20),
          children: [
            Column(
        children: _rests.map(_finalRest).toList(),
    ),


    ],
    )

    );
  }
  Widget _finalRest(Rest rest){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodItemCard (
        title: rest.title,
        imagePath: rest.imagePath,
        type:rest.type,
        area:rest.area
      ),
    );
  }
}