
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  const IconButtonWidget({super.key, required this.iconData,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(iconData));
  }
}
