import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Pages/registrationpage.dart';
import 'package:bentlos/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('oo'),
      ),
      body: Center(
        child: ElevatedButton(
          style: buttonTheme1,
          onPressed: () async {
            await AuthServices().signOut();
            Navigator.pushReplacement(
                // ignore: use_build_context_synchronously
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
