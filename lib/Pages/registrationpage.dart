import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Welcome to ',
                  style: GoogleFonts.montserrat(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Bentls. ',
                  style: GoogleFonts.montserrat(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Image.asset('assets/graph1.png'),
          ],
        ),
      ),
    );
  }
}
