import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/iusers_ui/Pages/intro_pages/intro2.dart';
import 'package:bentlos/iusers_ui/Pages/intro_pages/intro3.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
              Text(
                '''Need a court or field for your next game? Whether you are an Individual player who wants to play with friends or a coach who needs a Pitch''',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: buttonTheme1,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Intro2(),
                      ));
                },
                child: const Text('Next'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Intro3(),
                      ));
                },
                child: Text('Skip',
                    style: GoogleFonts.montserrat(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
