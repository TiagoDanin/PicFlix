import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:picflix/widgets/BarUser.dart';
import 'package:picflix/widgets/CardOverlayCover.dart';
import 'package:picflix/widgets/ListShowCard.dart';
import 'package:picflix/widgets/MenuTop.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageWithState createState() => HomePageWithState();
}

class HomePageWithState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff121212),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xff121212),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: (int index) {},
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeColor: Color(0xffe42115),
              shape: BadgeShape.circle,
              badgeContent: Text('5'),
              borderRadius: BorderRadius.circular(100),
              child: Icon(MdiIcons.playBoxMultipleOutline),
            ),
            label: "Soon",
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeColor: Color(0xff0070ea),
              shape: BadgeShape.circle,
              badgeContent: Text('1'),
              borderRadius: BorderRadius.circular(100),
              child: Icon(MdiIcons.downloadCircleOutline),
            ),
            label: "Downloads",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/cover/28.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.transparent, Colors.transparent],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                ),
                Container(
                  height: 501,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.black54, Colors.transparent, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 15,
                  child: CardOverlayCover(),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      BarUser(),
                      MenuTop(),
                    ],
                  ),
                ),
              ],
            ),
            ListShowCard(
              title: "Your List",
              ids: ["01", "04", "26", "34", "31", "06", "07"],
            ),
            ListShowCard(
              title: "Trending Now",
              ids: ["11", "29", "35", "07"],
            ),
            ListShowCard(
              title: "Top Picks for Tiago",
              ids: ["18", "22"],
            ),
            ListShowCard(
              title: "Because you watched Supernatural",
              ids: ["17", "03", "05", "32"],
            )
          ],
        ),
      ),
    );
  }
}
