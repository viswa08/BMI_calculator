import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class iconCard extends StatelessWidget {
  iconCard({required this.icon, required this.iconText});
  final Icon icon;
  final iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 15),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
