import 'package:flutter/material.dart';
import 'package:task2/Data/AnswersData.dart';
import 'package:task2/Data/usersAnsweresData.dart';

final Results = [0, 0, 0, 0, 0, 0];
final colorsList = [
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.blue
];
int correctAnswers = 0;
checkResults() {
  int correctAnswers = 0;
  for (int i = 0; i < usersAnsweresList.length; i++) {
    if (usersAnsweresList[i] == answeresList[i]) {
      Results[i] = 1;
      colorsList[i] = Colors.green;
      correctAnswers++;
    } else {
      Results[i] = 0;
      colorsList[i] = Colors.red;
    }
  }
}
