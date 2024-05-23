import 'package:flutter/material.dart';
import 'package:task2/Views/QuestionsScreen.dart';
import 'package:task2/Views/ResultsScreen.dart';
import 'package:task2/Views/StartScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
