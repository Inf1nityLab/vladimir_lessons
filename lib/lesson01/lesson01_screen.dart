import 'package:flutter/material.dart';

import 'utils/colors.dart';


class Lesson01Screen extends StatefulWidget {
  const Lesson01Screen({super.key});

  @override
  State<Lesson01Screen> createState() => _Lesson01ScreenState();
}

class _Lesson01ScreenState extends State<Lesson01Screen> {

  int number = 0;
  String info = '';
  TextEditingController searchController = TextEditingController();

  void increment(){
    setState(() {
      number++;
    });
  }

  void addInfo(){
    setState(() {
      if(searchController.text.isNotEmpty){
        info = searchController.text;
        searchController.clear();
      } else{
        info = 'You could not add data';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){increment();},
            child: const Text('Plus'),
          ),
          FloatingActionButton(
            onPressed: (){addInfo();},
            child: const Text('Add Info'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Plus'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        ],
      ),
      body:  Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search',
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('List'),
              Text('See al')
            ],
          ),

          Container(
            height: 100,
            width: 100,
            color: greenOne,
            child:  Center(
              child: Text('${number}'),
            ),
          ),
          Text(info),
        ],
      ),
    );
  }
}
