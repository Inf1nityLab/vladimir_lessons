import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SmallContainerWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  final String trailing;

  const SmallContainerWidget(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 120,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: white),
      child: Center(
        child: ListTile(
          leading: Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: backgroundColor),
            child:  Center(
              child: Icon(
                iconData,
                size: 30,
                color: black,
              ),
            ),
          ),
          title:  Text(
            title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: black),
          ),
          subtitle:  Text(
            subTitle,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: grey),
          ),
          trailing:  Text(
            trailing,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: black),
          ),
        ),
      ),
    );
  }
}
