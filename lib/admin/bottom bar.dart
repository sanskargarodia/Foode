import 'package:flutter/material.dart';
import 'package:food/admin/order.dart';
import 'package:food/admin/food_display.dart';
import 'package:food/admin/Restraunt_display.dart';
class Bottom_bar extends StatefulWidget {
  @override
  _Bottom_barState createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {

  int currentTabIndex=0;
  List pages;
  Widget currentPage;

  Restraunt_display restraunt_display;
  Food_display food_items;
  Order order;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    restraunt_display= Restraunt_display();
    food_items=Food_display();
    order=Order();
    pages=[restraunt_display,food_items,order];
    currentPage=restraunt_display;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap:(int index){
            setState(() {
              currentTabIndex=index;
              currentPage=pages[index];
            });

          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Display'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Food Item'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Orders'
            ),
          ]),
      body:currentPage ,
    );
  }
}
