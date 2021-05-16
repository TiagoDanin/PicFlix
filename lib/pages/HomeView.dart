import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:picflix/widgets/BarUser.dart';
import 'package:picflix/widgets/CardOverlayCover.dart';
import 'package:picflix/widgets/MenuTop.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageWithState createState() => HomePageWithState();
}

class HomePageWithState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
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
      ),
    );
  }
}
