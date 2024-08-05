// import 'package:bentlos/Pages/homepage.dart';
import 'package:bentlos/Pages/loginpage.dart';
import 'package:bentlos/Pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Components/buttons.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6CB),
      appBar: AppBar(
        backgroundColor: const Color(0xffECE6CB),
        // elevation: 0.0,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/earth-americas.png'),
          backgroundColor: Color(0xffECE6CB),
        ),
      ),
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment,
        children: [
          const Spacer(),
          Text(
            'Bentlos',
            style: GoogleFonts.inknutAntiqua(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          //     const SizedBox(
          //    width: 100,
          //   ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'yout trip guide',
                style: GoogleFonts.inknutAntiqua(),
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          ),

          const SizedBox(height: 40),
          Image.asset('assets/travel.png', height: 200, width: 150),
          ElevatedButton(
            style: ButtonTheme1,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
            child: Text("Sign up",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
          ),
          const SizedBox(
            height: 15,
          ),

          const Divider(
              height: 4,
              indent: 100,
              endIndent: 100,
              thickness: 1,
              color: Colors.black38),

          const SizedBox(
            height: 9,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Text('Log in',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    endIndent: 40,
                    color: Colors.grey,
                  ),
                ),
                Text('or continue with', style: GoogleFonts.montserrat()),
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    indent: 40,
                    //    endIndent: 50,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            //   width: 50,
          ),
          const SizedBox(
            height: 185,
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
