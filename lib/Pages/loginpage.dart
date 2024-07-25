import 'package:bentlos/Components/TextField.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Components/snackbar.dart';
import 'package:bentlos/Pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Services/authentication.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void loginUsers() async {
    String res = await AuthServices().loginUser(
      email: emailController.text,
      password: passwordController.text,
    );

    if (res == "Success") {
      setState(() {
        isLoading = true;
      });
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    } else {
      setState(() {
        isLoading = false;
      });
      // ignore: use_build_context_synchronously
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 231, 197),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 285,
            ),
            Text('Log in',
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
              textEditingController: emailController,
              hintText: 'Enter Email',
              icon: Icons.email_rounded,
              textInputType: TextInputType.emailAddress,
            ),
            Textfields(
              textEditingController: passwordController,
              hintText: 'Enter your password',
              icon: Icons.lock_rounded,
              isPass: true,
              textInputType: TextInputType.none,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 22,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonTheme1,
              onPressed: loginUsers,
              child: Text('Log in',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an accont?",
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
                            builder: (context) => const SignUp(),
                          ));
                    },
                    child: Text(' Sign Up',
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
