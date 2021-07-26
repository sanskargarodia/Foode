import 'package:flutter/material.dart';
import 'package:food/widgets/restraunt_details.dart';
class allfoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final double ratings;

  allfoods({this.id,this.name,this.imagePath,this.ratings});
  @override
  _allfoodsState createState() => _allfoodsState();
}

class _allfoodsState extends State<allfoods> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RestaurantDetailScreen(),
        ),
      );},
      child: Stack(
        children: [
          Container(
            height: 200,
            width:340,
            child: Image.asset(widget.imagePath,fit: BoxFit.cover,),
          ),
          Positioned(
            left:0,
            bottom: 0,
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black,Colors.black12]
                )
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(widget.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Icon(Icons.star_border)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
