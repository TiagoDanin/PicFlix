import "package:flutter/material.dart";
import 'package:picflix/widgets/ShowCard.dart';

class ListShowCard extends StatelessWidget {
  List<String> ids;
  String title;

  ListShowCard({Key key, this.ids, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ids.length,
              itemBuilder: (context, index) => CardShow(
                id: ids[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
