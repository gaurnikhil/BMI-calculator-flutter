import 'package:flutter/material.dart';
import 'constants.dart';

class OurIconWidget extends StatelessWidget {
  final String label;
  final IconData icon;

  OurIconWidget({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          label,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
