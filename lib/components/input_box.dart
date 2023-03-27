import 'package:flutter/material.dart';

class inputBox extends StatelessWidget {
  inputBox({required this.colour, this.cardChild, this.onPressed});
  final Color colour;
  VoidCallback? onPressed;
  Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Color(0XFF272A4D),
          color: colour,
        ),
      ),
    );
  }
}
