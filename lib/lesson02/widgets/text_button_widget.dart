

import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const TextButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: onPressed, child: Text(text));
  }
}
