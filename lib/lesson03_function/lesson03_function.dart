import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/elevated_button_widget.dart';

class Lesson03Function extends StatefulWidget {
  const Lesson03Function({super.key});

  @override
  State<Lesson03Function> createState() => _Lesson03FunctionState();
}

class _Lesson03FunctionState extends State<Lesson03Function> {
  bool isLiked = false;

  void like() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void attackFire() {
    print('fire');
  }

  void attackGun() {
    print('Gun');
  }

  void attack(String? text) {
    print('$text');
  }

  int number() {
    return 34;
  }

  int plus(int a, int b) {
    return a + b;
  }

  String name(String text) {
    return text.toUpperCase();
  }

  bool isRained() {
    return true;
  }

  Widget container() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.indigo,
    );
  }

  ElevatedButton elevatedButtonWidget(String name, Function() onPressed) {
    return ElevatedButton(onPressed: onPressed, child: Text(name));
  }

  double exchange(double number){
    return number * 89;
  }

  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           TextField(
            controller: numberController,
          ),
          ElevatedButton(onPressed: (){}, child: const Text('Change')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    attack('Gun');
                  },
                  child: const Text('Attack gun')),
              ElevatedButton(
                  onPressed: () {
                    attack('Fire');
                  },
                  child: const Text('Attack fire')),
            ],
          ),
          Text(name('Baias')),
          Text(name('timur')),
          container(),
          elevatedButtonWidget('Name', () {}),
          ElevatedButtonWidget(text: 'Name', onPressed: () {}),
          IconButton(
              onPressed: () {
                like();
              },
              icon:  Icon(
                Icons.favorite,
                color: isLiked ? Colors.red : Colors.black,
              )),
          Text('${exchange(100)}'),
          Text('${exchange(5678)}'),
        ],
      ),
    );
  }
}
