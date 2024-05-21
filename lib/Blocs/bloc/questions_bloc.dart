import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:task2/Models/quiz_question.dart';

part 'questions_event.dart';
part 'questions_state.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
      question: 'How are Flutter UIs built?',
      options: [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android',
      ],
      correctOption: 1 // Corrected index to 0 for the first option
      ),
  QuizQuestion(
      question: 'What\'s the purpose of a StatefulWidget?',
      options: [
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ],
      correctOption: 4 // Corrected index to 0 for the first option
      ),
  QuizQuestion(
      question:
          'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      options: [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ],
      correctOption: 1 // Corrected index to 0 for the first option
      ),
  QuizQuestion(
      question: 'What happens if you change data in a StatelessWidget?',
      options: [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
      ],
      correctOption: 1 // Corrected index to 0 for the first option
      ),
  QuizQuestion(
      question: 'How should you update data inside of StatefulWidgets?',
      options: [
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
      ],
      correctOption: 1 // Corrected index to 0 for the first option
      ),
];
int questionCouter = 0;
int answerCounter = 0;

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  int currentQuestionIndex = 0;
  QuestionsBloc() : super(QuestionsInitial()) {
    on<QuestionsEvent>((event, emit) {
      if (event is ChangeQuestion) {
        emit(QuestionsLoaded(
          counter: currentQuestionIndex + 1,
          options: questions[currentQuestionIndex].options,
          correctQuestionIndex: questions[currentQuestionIndex].correctOption,
          question: questions[currentQuestionIndex].question,
        ));
        currentQuestionIndex++;
      }
      currentQuestionIndex %= 5;
    });
  }
}
