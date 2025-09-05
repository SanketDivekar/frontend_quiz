import 'package:flutter/material.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';
import 'package:frontend_quiz/results_page.dart';
import 'package:frontend_quiz/reusable_widgets/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({
    super.key,
    required this.subjectName,
    required this.subjectImage,
    required this.subjectImageBgColor,
    required this.questionsList,
  });

  final String subjectName;
  final String subjectImage;
  final Color subjectImageBgColor;
  final List<QuizQuestionModel> questionsList;
  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int currentQuestionIndex = 0;
  var progressIndicatorValue = 0.0;
  List<String> userSelectedAnswers = [];

  void onClickAnswer(String answer) {
    userSelectedAnswers.add(answer);
  }

  void onSubmitAnswer() {
    setState(() {
      if (userSelectedAnswers.length == widget.questionsList.length) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ResultsPage(
                  subjectName: widget.subjectName,
                  subjectImage: widget.subjectImage,
                  subjectImageBgColor: widget.subjectImageBgColor,
                  userSelectedAnswersList: userSelectedAnswers,
                  subjectQuestionList: widget.questionsList,
                ),
          ),
        );
      } else {
        currentQuestionIndex++;
        progressIndicatorValue += 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestionModel currentQuestion;
    currentQuestion = widget.questionsList[currentQuestionIndex];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 220.0),
              child: Row(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question ${currentQuestionIndex + 1} of 10',
                      style: GoogleFonts.poppins(
                        color: Color(0xffA2B1C8),
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: Text(
                        currentQuestion.question,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 100.0),
                    SizedBox(
                      height: 10.0,
                      width: 350.0,
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(8.0),
                        value: progressIndicatorValue,
                        backgroundColor: const Color(0xff3C4C67),
                        color: const Color(0xffA62AF2),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...currentQuestion
                        .getShuffledAnswers()
                        .asMap()
                        .map(
                          (index, answer) => MapEntry(
                            index,
                            AnswerButton(
                              answerText: answer,
                              onClick: () {
                                onClickAnswer(answer);
                              },
                              index: index,
                            ),
                          ),
                        )
                        .values,
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 145,
                        ),
                        backgroundColor: const Color(0xffA62AF2),
                        foregroundColor: const Color(0xFF20082F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      onPressed: () {
                        onSubmitAnswer();
                      },
                      child: Text(
                        'Submit answer',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
