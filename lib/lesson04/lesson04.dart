

import 'package:flutter/material.dart';

class Lesson04 extends StatefulWidget {
  const Lesson04({super.key});

  @override
  State<Lesson04> createState() => _Lesson04State();
}

class _Lesson04State extends State<Lesson04> {

  String name = 'Baias';
  int age = 24;
  double weight = 67.90;
  bool isRained = true;

  TextEditingController nameController = TextEditingController();
  Icon icon = const Icon(Icons.add_chart);
  Widget container = Container();

  var h = '34';
  var a = 34;

  dynamic b = '56';

  void run(String text){
    print(text);
  }

  // == равны
  // !=
  // >
  // <
  // >=
  // <=

  // && - И
  // || - или

  int r = 5;
  int c = 5;
  void chek(){
    if(r == c){
      print(' r == c');
    } else if(r != c){
      print('r != c');
    } else{
      print('hello');
    }
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            run('run in the mor');
          }, child: const Text('run in the mor')),
          ElevatedButton(onPressed: (){
            run('run in the ev');
          }, child: const Text('run in the afte')),
          ElevatedButton(onPressed: (){
            run('run in the af');
          }, child: const Text('run in the eve')),
          TextButton(onPressed: (){
            chek();
          }, child: const Text('if'))
        ],
      ),
    );
  }
}
