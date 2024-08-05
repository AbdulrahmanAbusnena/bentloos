import 'package:bentlos/Components/TextField.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Components/snackbar.dart';
import 'package:bentlos/Pages/homepage.dart';
import 'package:bentlos/Pages/loginpage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Services/authentication.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isLoading = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void signUpUser() async {
    String res = await AuthServices().signUpUser(
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
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
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    //  double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffECE6CB),
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
              onPressed: signUpUser,
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
