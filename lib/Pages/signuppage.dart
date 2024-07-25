import 'package:bentlos/Components/TextField.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Pages/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

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
              height: 285,
            ),
            Text('Sign up',
                style: GoogleFonts.inknutAntiqua(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 32,
            ),
            const SizedBox(height: 55),
            Textfields(
              textEditingController: nameController,
              hintText: 'Enter your Name',
              icon: Icons.person_rounded,
              isPass: false,
              textInputType: TextInputType.name,
            ),
            Textfields(
              textEditingController: emailController,
              hintText: 'Enter your Email',
              icon: Icons.email_rounded,
              isPass: false,
              textInputType: TextInputType.emailAddress,
            ),
            Textfields(
              textEditingController: passwordController,
              hintText: 'Enter your Password',
              icon: Icons.lock_rounded,
              isPass: true,
              textInputType: TextInputType.none,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonTheme1,
              onPressed: () async {
                // final email = _email.text;
                //  final password = _password.text;
                //   final userCredential = await FirebaseAuth.instance
                //       .createUserWithEmailAndPassword(
                //     email: email, password: password);
                //  print(userCredential);
              },
              child: Text(
                'Sign up',
                style: GoogleFonts.montserrat(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.montserrat(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: Text('LogIn',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
