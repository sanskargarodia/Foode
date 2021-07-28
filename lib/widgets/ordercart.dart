import 'package:flutter/material.dart';
class Ordercart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
          children: [
            Container(
              height: 75,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                 InkWell(
                     onTap:(){},
                     child: Icon(Icons.keyboard_arrow_up)),
                  Text("0",style: TextStyle(fontSize: 18),),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/samosa.jpg"),
                    fit: BoxFit.cover
                  ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    offset: Offset(0.0,5.0)
                  )
                ]

              ),
            ),
            SizedBox(width: 20,),
            Column(
              children: [
                Text("Samosa"),
                Text("100")
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: (){},
                child: Icon(Icons.cancel,color: Colors.grey,)),
          ],

        ),
      ),
    );
  }
}
