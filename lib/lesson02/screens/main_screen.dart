import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/strings.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/icon_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/small_container_widget.dart';

import '../constants/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            BigContainer(),
            SizedBox(
              height: 20,
            ),
            RowBody(),
            SmallContainerWidget(
                iconData: Icons.arrow_upward_outlined,
                title: 'Sent',
                subTitle: 'hkjashdkjhsakfjdh',
                trailing: '150'),
            SmallContainerWidget(
                iconData: Icons.arrow_downward,
                title: 'Receive',
                subTitle: 'sdsfkdsljkf',
                trailing: '250'),
            SmallContainerWidget(
                iconData: Icons.money,
                title: 'Loan',
                subTitle: 'sdfksdjhfkjhds',
                trailing: '400'),
          ],
        ),
      ),
    );
  }
}

class BigContainer extends StatelessWidget {
  const BigContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: white),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonWidget(iconData: Icons.menu),
              IconButtonWidget(iconData: Icons.more_vert)
            ],
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          SizedBox(height: 20,),
          Text(
            'Hiar Riaz',
            style:  TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: indigo),
          ),
        ],
      ),
    );
  }
}

class RowBody extends StatelessWidget {
  const RowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          overview,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: indigo),
        ),
        const Icon(
          Icons.notifications_none_sharp,
          size: 30,
          color: black,
        ),
        Expanded(child: Container()),
        Text(
          data,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: indigo),
        ),
      ],
    );
  }
}
