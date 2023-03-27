import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final Icon icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: icon,
        shape: CircleBorder(),
        fillColor: Color(0XFF4C4F5E),
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        onPressed: onPressed);
  }
}
