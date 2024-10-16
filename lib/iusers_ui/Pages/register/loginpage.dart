// ignore_for_file: use_build_context_synchronously

import 'package:bentlos/Components/textfield.dart';
import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Components/snackbar.dart';
import 'package:bentlos/iusers_ui/pages/register/signuppage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Services/authentication.dart';

import '../homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey =
      GlobalKey<FormState>(); // Key to access form validation state
  String? _errorMessage; // Stores error messages for display
  final _scaffoldKey =
      GlobalKey<ScaffoldState>(); // Key to access Scaffold for snackbars

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _loginUser() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _errorMessage = null;
      });

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()));

      try {
        final user = await AuthServices().loginUser(
          email: emailController.text,
          password: passwordController.text,
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Homepage()),
        );
      } on AuthException catch (e) {
        setState(() {
          _errorMessage = e.message;
        });

        Navigator.pop(context);
        showSnackBar(
            context, e.message); // Assuming you have a showSnackBar function
      } catch (e) {
        setState(() {
          _errorMessage = 'An unexpected error occurred: ${e.toString()}';
        });
        Navigator.pop(context);
        showSnackBar(context,
            'An unexpected error occurred.'); // Assuming you have a showSnackBar function
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the scaffold key
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Allows scrolling if content exceeds screen height
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Added padding for better spacing
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 210),
                Text('Log in',
                    style: GoogleFonts.inknutAntiqua(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 32),
                const SizedBox(height: 55),
                Textfields(
                  textEditingController: emailController,
                  hintText: 'Enter Email',
                  icon: Icons.email_rounded,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AuthServices().emailValidator(value)) {
                      return 'Please enter a valid email address.';
                    }
                    return null;
                  },
                ),
                Textfields(
                  textEditingController: passwordController,
                  hintText: 'Enter your password',
                  icon: Icons.lock_rounded,
                  isPass: true,
                  textInputType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),
                // Display error message if any
                if (_errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0), // Add padding above error message
                    child: Text(_errorMessage!,
                        style: const TextStyle(color: Colors.red)),
                  ),
                Row(
                  children: [
                    const SizedBox(width: 22),
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
                const SizedBox(height: 20),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: buttonTheme1,
                  onPressed: _loginUser,
                  child: Text('Log in',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white)),
                ),
                const SizedBox(height: 20),
                //This section was previously unclear;  it needs more context to understand its purpose.
                SizedBox(
                  child: Container(
                    height: 77,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(35.0),
                            right: Radius.circular(35.0))),
                    child: const Row(
                      children: [
                        Padding(padding: EdgeInsets.all(8.0)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
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
        ),
      ),
    );
  }
}
