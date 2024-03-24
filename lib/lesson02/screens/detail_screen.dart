import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/colors.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/icon_button_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: const IconButtonWidget(iconData: Icons.arrow_back_ios),
        actions: const [
          IconButtonWidget(iconData: Icons.search),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(15),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
