import 'package:flutter/material.dart';
import 'package:task2/Data/questionsAnswersData.dart';
import 'package:task2/Views/QuestionsScreen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[600],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.android,
                color: Colors.white,
                size: 100,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Welcome to',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "learn flutter the fun way",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    shuffle();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const QuestionsScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 100, 12, 125),
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
                        Icon(Icons.question_mark),
                        Text(
                          'Start Quiz',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
