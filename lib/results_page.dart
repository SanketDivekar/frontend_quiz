import 'package:flutter/material.dart';
import 'package:frontend_quiz/home_page.dart';
import 'package:frontend_quiz/models/quiz_question_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.subjectImage,
    required this.subjectName,
    required this.subjectImageBgColor,
    required this.userSelectedAnswersList,
    required this.subjectQuestionList,
  });

  final String subjectName;
  final String subjectImage;
  final Color subjectImageBgColor;
  final List<String> userSelectedAnswersList;
  final List<QuizQuestionModel> subjectQuestionList;

  @override
  Widget build(BuildContext context) {
    int scoreCount = 0;
    void getUserScore() {
      for (int i = 0; i < subjectQuestionList.length; i++) {
        if (userSelectedAnswersList[i] == subjectQuestionList[i].answers[0]) {
          scoreCount += 1;
        }
      }
    }

    getUserScore();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Quiz completed \n',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  TextSpan(
                    text: 'You scored...',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 280,
              width: 350,
              decoration: BoxDecoration(
                color: const Color(0xff3C4C67),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: subjectImageBgColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 60,
                        width: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(subjectImage),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        subjectName,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    scoreCount.toString(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 80.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'out of 10',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF566D93),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 50.0,
              width: 350.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffA62AF2),
                  foregroundColor: const Color(0xFF20082F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
                child: Text(
                  'Play Again',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}