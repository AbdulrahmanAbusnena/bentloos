import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/iusers_ui/pages/intro_pages/intro3.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '''  With Bentls. 
        Search our listings
        to find the perfect 
        spot for your next 
        football or 
        basketball match. ''',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 500,
            ),
            ElevatedButton(
              style: buttonTheme1,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Intro3(),
                    ));
              },
              child: Text('Next',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Skip',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
