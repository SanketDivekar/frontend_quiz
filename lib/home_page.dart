import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff313E51),
      body: Column(
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
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 50.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 50.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 50.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 50.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
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
