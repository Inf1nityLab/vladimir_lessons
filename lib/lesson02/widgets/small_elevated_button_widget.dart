
import 'package:flutter/material.dart';

class SmallElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Function() onPressed;

  const SmallElevatedButtonWidget(
      {super.key,
        required this.text,
        required this.buttonColor,
        required this.textColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, color: textColor),
        ),
      ),
    );
  }
}