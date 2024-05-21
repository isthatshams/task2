import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/Blocs/bloc/questions_bloc.dart';
import 'package:task2/Views/ResultsScreen.dart';

int answered = 0;
var array = [];

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionsBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
            backgroundColor: Colors.purple,
            body: Container(
              margin: const EdgeInsets.all(24),
              child: Center(child: BlocBuilder<QuestionsBloc, QuestionsState>(
                builder: (context, state) {
                  if (state is QuestionsInitial) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                            "What are the main components of a Flutter application?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: const Text(
                            "Widgets",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: const Text(
                            "Components",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: const Text(
                            "Blocks",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: const Text(
                            "Functions",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    );
                  } else if (state is QuestionsLoaded && state.counter < 5) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(state.question,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            if (state.correctQuestionIndex == 1) {
                              addNumber();
                            } else {
                              removeNumber();
                            }
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: Text(
                            state.option1,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            if (state.correctQuestionIndex == 2) {
                              addNumber();
                            } else {
                              removeNumber();
                            }
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: Text(
                            state.option2,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            if (state.correctQuestionIndex == 3) {
                              addNumber();
                            } else {
                              removeNumber();
                            }
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: Text(
                            state.option3,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            if (state.correctQuestionIndex == 4) {
                              addNumber();
                            } else {
                              removeNumber();
                            }
                            BlocProvider.of<QuestionsBloc>(context)
                                .add(ChangeQuestion());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[400],
                          ),
                          child: Text(
                            state.option4,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    );
                  }
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "No more Data",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple[400],
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResultsScreen()));
                            },
                            child: const Text(
                              "See Results",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  );
                },
              )),
            )),
      ),
    );
  }
}

addNumber() {
  array.add(1);
  answered++;
}

removeNumber() {
  array.add(0);
}

returnNumber() {
  return answered;
}

returnArray() {
  return array;
}
