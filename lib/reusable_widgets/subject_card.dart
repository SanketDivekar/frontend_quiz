import 'package:flutter/material.dart';
import 'package:frontend_quiz/questions_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
    required this.imageName,
    required this.subjectName,
    required this.backgroundColor,
  });

  final String imageName;
  final String subjectName;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    onTapSubjectTile(selectedSubjectName) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => QuestionsPage(
                subjectName: selectedSubjectName,
                subjectImage: imageName,
                subjectImageBgColor: backgroundColor,
              ),
        ),
      );
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: 75.0,
          width: 400.0,
          decoration: BoxDecoration(
            color: Color(0xff3C4C67),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60,
                  width: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(imageName),
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
      ),
    );
  }
}
