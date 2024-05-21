import 'package:flutter/material.dart';
import 'package:task2/Views/StartScreen.dart';

var _Red = Colors.red;
var _Blue = Colors.blue;

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  final answer = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.purple,
          body: Container(
            margin: const EdgeInsets.all(24),
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "By combining widgets in code",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What's the purpose of a StatefulWidget?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Render UI that does not depend on data",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "Which widget should you try to use more often: StatelessWidget or StatefulWidget?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "StatelessWidget",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What happens if you change data in a StatelessWidget?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "The UI is not updated",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("5",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "How should you update data inside of StatefulWidgets?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "By calling setState()",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("6",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    title: Text(
                      "What are the main components of a Flutter application?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StartScreen()));
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

colorChecker(bool x) {
  if (x = false) {
    return Colors.red;
  } else {
    return Colors.blue;
  }
}
