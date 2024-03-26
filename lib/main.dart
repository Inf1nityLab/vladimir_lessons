import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/screens/detail_screen.dart';
import 'package:vladimir_timur_lessons/lesson02/screens/login_screen.dart';
import 'package:vladimir_timur_lessons/lesson02/screens/main_screen.dart';
import 'package:vladimir_timur_lessons/lesson03_function/lesson03_function.dart';
import 'package:vladimir_timur_lessons/lessons01/lesson01_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lesson03Function(),
    );
  }
}


