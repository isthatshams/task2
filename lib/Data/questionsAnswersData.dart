import '../Models/QuizQuestion.dart';

int questionCounter = 0;
final questionsList = [
  QuizQuestion(
    question: 'What are the main building blocks of Flutter UIs?',
    options: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(question: 'How are Flutter UIs built?', options: [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    question: 'What\'s the purpose of a StatefulWidget?',
    options: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
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
  ),
  QuizQuestion(
    question: 'What happens if you change data in a StatelessWidget?',
    options: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    question: 'How should you update data inside of StatefulWidgets?',
    options: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];

questionCounterAdder() {
  questionCounter++;
}

questionCounterReset() {
  questionCounter = 0;
}

List shuffledList = [];

shuffleList(){
  shuffledList=List.from(questionsList);
  for (var i = 0; i < 6; i++) {
    shuffledList[i].options.shuffle();
  }
}
