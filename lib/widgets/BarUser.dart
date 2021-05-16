import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BarUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => {},
          child: Text(
            "P",
            style: TextStyle(
              color: Color(0xffdb0000),
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Row(
          children: [
            Icon(MdiIcons.cast),
            SizedBox(width: 12),
            Icon(MdiIcons.magnify),
            SizedBox(width: 12),
            Icon(MdiIcons.account),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
