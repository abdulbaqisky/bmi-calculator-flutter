import 'package:flutter/material.dart';
import 'constants.dart';

class ReUse extends StatelessWidget {
  ReUse({this.label, this.iconMe});

  final String label;
  final IconData iconMe;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconMe, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
