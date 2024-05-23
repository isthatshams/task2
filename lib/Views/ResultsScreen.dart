import 'package:flutter/material.dart';
import 'package:task2/Views/StartScreen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  final answer = 0;
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
                    "You answered $answer ouf of 6 questions correctly!",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What are the main components of a Flutter application?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Widgets",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What are the main components of a Flutter application?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Widgets",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What are the main components of a Flutter application?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Widgets",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => StartScreen()));
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
