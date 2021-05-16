import 'package:flutter/material.dart';

class CardShow extends StatelessWidget {
  String id;
  CardShow({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 200,
      width: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cover/$id.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
