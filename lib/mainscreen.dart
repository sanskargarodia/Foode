import 'package:flutter/material.dart';
import 'package:food/Homescreen.dart';
import 'package:food/pages/cartpage.dart';
import 'package:food/pages/searchpage.dart';
import 'package:food/pages/profilepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Bb extends StatefulWidget {
  @override
  _BbState createState() => _BbState();
}

class _BbState extends State<Bb> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }
  signOut() async {
    _auth.signOut();
  }

  int currentTabIndex=0;
  List pages;
  Widget currentPage;

  Homescreen homescreen;
  Search searchpage;
  Cart cartpage;
  Profile profilepage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.checkAuthentication();
    this.getUser();
    homescreen= Homescreen();
    searchpage=Search();
    cartpage=Cart();
    profilepage=Profile();
    pages=[homescreen,searchpage,cartpage,profilepage];
    currentPage=homescreen;
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
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Profile'
            ),
          ]),
      body:currentPage ,
    );
  }
}
