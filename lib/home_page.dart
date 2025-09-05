import 'package:flutter/material.dart';
import 'package:frontend_quiz/reusable_widgets/subject_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});
  final List<QuizQuestionModel> questionList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome to the \n',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          TextSpan(
                            text: 'Frontend Quiz!',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 55.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'Pick a subject to get started',
                      style: GoogleFonts.poppins(
                        color: Color(0xffA2B1C8),
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SubjectCard(
                      imageName: 'lib/assets/html_image.png',
                      subjectName: 'HTML',
                      backgroundColor: const Color(0xFFFDEDD6),
                      selectedQuestionList: questionList,
                    ),
                    SubjectCard(
                      imageName: 'lib/assets/css_image.png',
                      subjectName: 'CSS',
                      backgroundColor: const Color(0xFFDAFFDA),
                      selectedQuestionList: questionList,
                    ),
                    SubjectCard(
                      imageName: 'lib/assets/javascript_image.png',
                      subjectName: 'Javascript',
                      backgroundColor: const Color(0xFFCEEAFF),
                      selectedQuestionList: questionList,
                    ),
                    SubjectCard(
                      imageName: 'lib/assets/accessibility_image.png',
                      subjectName: 'Accessibility',
                      backgroundColor: const Color(0xFFFCEBFF),
                      selectedQuestionList: questionList,
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
