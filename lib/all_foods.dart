import 'package:flutter/material.dart';
import 'package:food/widgets/restraunt_details.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      borderRadius: BorderRadius.circular(40),
      onTap: (){Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RestaurantDetailScreen(),
        ),
      );},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 200,
            width:340,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                widget.imagePath,
                width: 110.0,
                height: 110.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left:0,
            bottom: 0,
            child: Opacity(
              opacity: 0.3,
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)
                ),
                  gradient: LinearGradient(
                    colors: [Colors.black,Colors.black12]
                  )
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )

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
