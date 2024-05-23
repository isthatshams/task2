import 'package:flutter/material.dart';
import 'package:task2/Data/ResultsData.dart';
import 'package:task2/Data/usersAnsweresData.dart';
import 'package:task2/Views/StartScreen.dart';
import 'package:task2/Data/AnswersData.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.purple,
          body: Container(
            margin: EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "You answered $correctAnswers ouf of 6 questions correctly!",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: colorsList[index],
                                  child: Text("${index + 1}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ))),
                              title: Text(
                                questionsList[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    answeresList[index],
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    usersAnsweresList[index],
                                    style: const TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ));
                        },
                        itemCount: Results.length),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.purple,
                        iconColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const SizedBox(
                        width: 200,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restart_alt, color: Colors.white),
                            Text(
                              'Restart',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
