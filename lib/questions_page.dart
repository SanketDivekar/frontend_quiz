import 'package:flutter/material.dart';
import 'package:frontend_quiz/data/accessibility_questions.dart';
import 'package:frontend_quiz/data/css_questions.dart';
import 'package:frontend_quiz/data/html_questions.dart';
import 'package:frontend_quiz/data/javascript_questions.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key, required this.subjectName});

  final String subjectName;
  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  var currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    final QuizQuestionModel currentQuestion;
    if (widget.subjectName == 'HTML') {
      currentQuestion = htmlQuestions[currentQuestionIndex];
    } else if (widget.subjectName == 'CSS') {
      currentQuestion = cssQuestions[currentQuestionIndex];
    } else if (widget.subjectName == 'Accessibility') {
      currentQuestion = accessibilityQuestions[currentQuestionIndex];
    } else {
      currentQuestion = javascriptQuestion[currentQuestionIndex];
    }
    return Scaffold(
      body: Center(
        child: Text(
          currentQuestion.question,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }
}