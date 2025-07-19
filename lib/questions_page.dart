import 'package:flutter/material.dart';
import 'package:frontend_quiz/data/accessibility_questions.dart';
import 'package:frontend_quiz/data/css_questions.dart';
import 'package:frontend_quiz/data/html_questions.dart';
import 'package:frontend_quiz/data/javascript_questions.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({
    super.key,
    required this.subjectName,
    required this.subjectImage,
    required this.subjectImageBgColor,
  });

  final String subjectName;
  final String subjectImage;
  final Color subjectImageBgColor;
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
      backgroundColor: const Color(0xff313E51),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: widget.subjectImageBgColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60,
                  width: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(widget.subjectImage),
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  widget.subjectName,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question 6 of 10',
                    style: GoogleFonts.poppins(
                      color: Color(0xffA2B1C8),
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    softWrap: true,
                    currentQuestion.question,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 250.0),
                  SizedBox(
                    height: 10.0,
                    width: 350.0,
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(8.0),
                      value: 0.6,
                      backgroundColor: const Color(0xff3C4C67),
                      color: const Color(0xffA62AF2),
                    ),
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 75.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0xff3C4C67),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 75.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0xff3C4C67),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 75.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0xff3C4C67),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 75.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0xff3C4C67),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 75.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Color(0xffA62AF2),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
