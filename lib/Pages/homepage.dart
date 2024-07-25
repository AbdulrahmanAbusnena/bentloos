import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Pages/loginpage.dart';
import 'package:bentlos/Pages/registrationpage.dart';
import 'package:bentlos/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonTheme1,
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
