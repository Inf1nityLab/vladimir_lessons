import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/colors.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/elevated_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/icon_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/small_container_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/small_elevated_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/text_button_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: const IconButtonWidget(
          iconData: Icons.arrow_back_ios,
        ),
        actions: const [
          IconButtonWidget(iconData: Icons.search),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _RowBody(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SmallElevatedButtonWidget(
                    text: 'All',
                    buttonColor: indigo,
                    textColor: white,
                    onPressed: () {}),
                SmallElevatedButtonWidget(
                    text: 'Income',
                    buttonColor: white,
                    textColor: grey,
                    onPressed: () {}),
                SmallElevatedButtonWidget(
                    text: 'Expense',
                    buttonColor: white,
                    textColor: grey,
                    onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Today',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: indigo),
            ),
            const SizedBox(
              height: 20,
            ),
            const SmallContainerWidget(
                iconData: Icons.email_outlined,
                title: 'Payment',
                subTitle: 'Payment from Andrea',
                trailing: '30.00'),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButtonWidget(text: 'See details', onPressed: (){})
          ],
        ),
      ),
    );
  }
}

class _RowBody extends StatelessWidget {
  const _RowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Recent transaction',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: indigo),
        ),
        TextButtonWidget(text: 'see all', onPressed: () {})
      ],
    );
  }
}
