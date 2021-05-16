import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardOverlayCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          child: Column(
            children: [
              Icon(MdiIcons.plus),
              SizedBox(height: 4),
              Text(
                "Add List",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton.icon(
          icon: Icon(MdiIcons.play),
          label: Text("Play"),
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white, // background
            onPrimary: Colors.black, // foreground
          ),
        ),
        Container(
          width: 100,
          child: Column(
            children: [
              Icon(MdiIcons.informationOutline),
              SizedBox(height: 4),
              Text(
                "Info",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
