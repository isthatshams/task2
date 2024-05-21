part of 'questions_bloc.dart';

@immutable
sealed class QuestionsEvent {}

var array = [];

class ChangeQuestion extends QuestionsEvent {}
