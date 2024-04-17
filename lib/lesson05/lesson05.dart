import 'package:flutter/material.dart';

class Lesson05 extends StatefulWidget {
  const Lesson05({super.key});

  @override
  State<Lesson05> createState() => _Lesson05State();
}

class _Lesson05State extends State<Lesson05> {
  String car = 'BMW';

  // String, int, bool, double

  List<String> cars = [
    'BMW',
    'AUDI',
  ];
  List<int> ages = [];

  // dynamic, var

  List<dynamic> data = [
    [12, 34, 56],
    [],
    []
  ];

  // Widget, Color, Icon,

  List<Widget> widgets = [];

  //CRUD

  void list(){
    //read
    print(cars);
    print(cars[0]);
    // Create
    cars.add('Mercedes');
    print(cars);

    // Update
    cars[0] = 'Bmw';
    print(cars);

    // Delete
    cars.remove('Bmw');
    cars.removeAt(1);
    print(cars);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            list();
          }, child: Text('List')),
          Text(cars[0]),
        ],
      ),
    );
  }
}
