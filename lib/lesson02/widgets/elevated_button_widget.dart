import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ElevatedButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: indigo),
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w700, color: white, fontSize: 20),
        ),
      ),
    );
  }
}
