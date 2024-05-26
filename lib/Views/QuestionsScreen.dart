import 'package:flutter/material.dart';
import 'package:task2/Data/ResultsData.dart';
import 'package:task2/Data/questionsAnswersData.dart';
import 'package:task2/Data/usersAnsweresData.dart';
import 'package:task2/Views/ResultsScreen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                questionsList[questionCounter].question,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 32,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          child: Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (questionCounter >= 5) {
                                      add(
                                          questionsList[questionCounter]
                                              .options[index],
                                          questionCounter);
                                      checkResults();
                                      questionCounterReset();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const ResultsScreen(),
                                        ),
                                      );
                                    } else {
                                      setState(() {
                                        add(
                                            questionsList[questionCounter]
                                                .options[index],
                                            questionCounter);
                                        questionCounterAdder();
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple[300],
                                  ),
                                  child: Container(padding: EdgeInsets.all(8),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          shuffledList[index],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ))),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    );
                  },
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}
