import 'package:flutter/material.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Services/authentication.dart';
import 'registrationpage.dart';

class SignOut extends StatefulWidget {
  const SignOut({super.key});

  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: buttonTheme1,
          onPressed: () async {
            await AuthServices().signOut();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const IntroPage(),
                ));
          },
          child: Text('Log out',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
