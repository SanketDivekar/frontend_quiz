import 'package:flutter/material.dart';
import 'package:frontend_quiz/questions_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
    required this.imageName,
    required this.subjectName,
  });

  final String imageName;
  final String subjectName;

  @override
  Widget build(BuildContext context) {
    onTapSubjectTile(selectedSubjectName) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuestionsPage(subjectName: selectedSubjectName),
        ),
      );
    }

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 80.0,
        width: 450.0,
        decoration: BoxDecoration(
          color: Color(0xff3C4C67),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFDEDD6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60,
                width: 55,
                child: Image.asset(
                  imageName,
                  // fit: BoxFit.fill,
                ),
              ),
            ),
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
      ),
      onTap: () {
        onTapSubjectTile(subjectName);
      },
    );
  }
}
