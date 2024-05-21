part of 'questions_bloc.dart';

@immutable
sealed class QuestionsState {}

final class QuestionsInitial extends QuestionsState {}

class QuestionsLoaded extends QuestionsState {
  final List<String> options;
  final String question;
  final int correctQuestionIndex;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final int counter;
  QuestionsLoaded(
      {required this.options,
      required this.question,
      required this.correctQuestionIndex,
      required this.counter})
      : option1 = options[0],
        option2 = options[1],
        option3 = options[2],
        option4 = options[3];
}
