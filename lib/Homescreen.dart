import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/all_foods.dart';
import 'package:food/all_restraunts.dart';
import 'package:food/data/foodata.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Restraunt> _restraunts= restraunts;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  signOut() async {
    _auth.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Food and", style: TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold,)),
                    Text("Deliveries", style: TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold,)),
                  ],
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: signOut,
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Restraunts near you",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                GestureDetector(
                  onTap: (){},
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent
                      ),
                    ),
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>All_restraunts()),);},
                    child: const Text('View All'),
                  )
                )
              ],
            ),
            Column(
              children: _restraunts.map(_finalRestraunt).toList(),
            )


          ],
        )

    );
  }
  Widget _finalRestraunt(Restraunt restraunt){
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      child: allfoods(
        id: restraunt.name,
        name: restraunt.name,
        imagePath: restraunt.imagePath,
        ratings:restraunt.ratings,
      ),
    );
  }
}