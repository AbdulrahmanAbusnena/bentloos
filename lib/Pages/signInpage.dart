import 'package:bentlos/Components/TextField.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  // late final TextEditingController _userName;
  //  late final TextEditingController _lastname;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    //  _userName = TextEditingController();
    //  _lastname = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    // _userName.dispose();
    //  _lastname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 231, 197),
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 350,
            ),
            Text('Sign in',
                style: GoogleFonts.inknutAntiqua(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 32,
            ),
            const SizedBox(height: 55),
            const Textfields(),
            ElevatedButton(
                style: ButtonTheme2,
                onPressed: () async {
                  final email = _email.text;
                  final password = _password.text;
                  final userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password);
                  print(userCredential);
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.montserrat(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
