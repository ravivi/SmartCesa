import 'package:SmartCesa/screens/home.dart';
import 'package:SmartCesa/screens/testGrid.dart';

import 'Sdrawer.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

// import '../screens/parametre.dart';
// import '../widget/productList.dart';
// import '../screens/recipes.dart';
// import 'badge.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  void onTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  List viewList = [Home(), TestGrid(), TestGrid()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              scaffoldKey.currentState.openDrawer();
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("images/logo.png"),
            ),
          ),
        ),
        title: Text("Cesa-Ci"),
        actions: <Widget>[
          // IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      drawer: mDrawer(context),
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.white.withAlpha(200),
        currentIndex: pageIndex,
        onTap: onTapped,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.blueAccent,
            title: Text("Accueil"),
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 20,
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blueAccent,
            title: Text("Dons"),
            activeIcon: Icon(
              Icons.card_giftcard,
              color: Colors.black,
              size: 20,
            ),
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.black,
              size: 20,
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            title: Text("Nos Eglises"),
            activeIcon: Icon(Icons.people, color: Colors.black),
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 20,
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            title: Text("Programmes"),
            activeIcon: Icon(Icons.more_horiz, color: Colors.black),
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
        opacity: .2,
        elevation: 0,
      ),
      body: viewList.elementAt(pageIndex),
    );
  }
}
