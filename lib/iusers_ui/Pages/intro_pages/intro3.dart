import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/iusers_ui/pages/register/loginpage.dart';
import 'package:bentlos/iusers_ui/pages/register/signuppage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 310,
            ),
            Center(
              child: Text('Join Bentlos',
                  style: GoogleFonts.mouseMemoirs(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
                style: buttonTheme3,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ));
                },
                child: Text(
                  'Renter',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Or',
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  )),
              child: Text('Owner',
                  style: GoogleFonts.montserrat(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
