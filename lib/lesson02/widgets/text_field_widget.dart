import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Widget? widget;
  final bool show;

  const TextFieldWidget({
    super.key,
    required this.text,
    required this.iconData,
    this.widget,
    required this.show,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: show,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
      decoration: InputDecoration(
          filled: true,
          fillColor: white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          //hintText: 'Email',
          labelText: text,
          labelStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
          //helperText: 'Email',
          prefixIcon: Icon(iconData),
          suffixIcon: widget
          //errorText: 'ERROR'
          ),
    );
  }
}
