// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:frontend_quiz/questions_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';
import 'package:frontend_quiz/data/accessibility_questions.dart';
import 'package:frontend_quiz/data/css_questions.dart';
import 'package:frontend_quiz/data/html_questions.dart';
import 'package:frontend_quiz/data/javascript_questions.dart';

class SubjectCard extends StatefulWidget {
  SubjectCard({
    super.key,
    required this.imageName,
    required this.subjectName,
    required this.backgroundColor,
    required this.selectedQuestionList,
  });

  final String imageName;
  final String subjectName;
  final Color backgroundColor;
  List<QuizQuestionModel> selectedQuestionList;

  @override
  State<SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    if (widget.subjectName == 'HTML') {
      widget.selectedQuestionList = htmlQuestions;
    } else if (widget.subjectName == 'CSS') {
      widget.selectedQuestionList = cssQuestions;
    } else if (widget.subjectName == 'Accessibility') {
      widget.selectedQuestionList = accessibilityQuestions;
    } else {
      widget.selectedQuestionList = javascriptQuestion;
    }
    onTapSubjectTile(selectedSubjectName) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => QuestionsPage(
                subjectName: selectedSubjectName,
                subjectImage: widget.imageName,
                subjectImageBgColor: widget.backgroundColor,
                questionsList: widget.selectedQuestionList,
              ),
        ),
      );
    }

    return MouseRegion(
      onHover: (context) => setState(() => _isHovered = true),
      onExit: (context) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          curve: Curves.easeIn,
          margin: EdgeInsets.all(15.0),
          height: 75.0,
          width: 400.0,
          decoration: BoxDecoration(
            color: _isHovered ? Color(0xff1C2F47) : Color(0xff3C4C67),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow:
                _isHovered
                    ? [
                      BoxShadow(
                        color: Color(0xFF253F5E),
                        offset: const Offset(0, 8),
                        blurRadius: 25.0,
                      ),
                    ]
                    : [BoxShadow(color: Color(0xff3C4C67))],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 50,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(widget.imageName),
                  ),
                ),
              ),
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
        onTap: () {
          onTapSubjectTile(widget.subjectName);
        },
      ),
    );
  }
}
