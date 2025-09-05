import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onClick,
    required this.index,
  });

  final String answerText;
  final void Function() onClick;
  final int index;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  bool _isHovered = false;
  String getAnswerOptionIdentifire() {
    if (widget.index == 0) {
      return 'A';
    } else if (widget.index == 1) {
      return 'B';
    } else if (widget.index == 2) {
      return 'C';
    } else {
      return 'D';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MouseRegion(
        onHover: (context) => setState(() => _isHovered = true),
        onExit: (context) => setState(() => _isHovered = false),
        cursor: SystemMouseCursors.click,
        child: ElevatedButton(
          onPressed: widget.onClick,
          style: ElevatedButton.styleFrom(
            backgroundColor: _isHovered ? Color(0xff1C2F47) : Color(0xff3C4C67),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
          child: SizedBox(
            height: 65,
            width: 400,
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      getAnswerOptionIdentifire(),
                      style: GoogleFonts.poppins(
                        color: const Color(0xff3C4C67),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  widget.answerText,
                  softWrap: true,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
