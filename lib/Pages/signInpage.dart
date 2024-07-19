import 'package:bentlos/Components/buttons.dart';
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
  late final TextEditingController _firstname;
  late final TextEditingController _lastname;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _firstname = TextEditingController();
    _lastname = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _firstname.dispose();
    _lastname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstname,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      hintText: 'Enter your First Name',

                      //  labelText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16.0,
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                    ),
                    maxLength: 20,
                  ),
                  TextFormField(
                    controller: _lastname,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      hintText: 'Enter your Last Name',

                      //  labelText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16.0,
                      ),

                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                    ),
                    maxLength: 20,
                  ),
                  TextFormField(
                    controller: _email,
                    enableSuggestions: true,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      hintText: 'Enter your Email',

                      //  labelText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16.0,
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                    ),
                    maxLength: 30,
                  ),
                  TextFormField(
                    controller: _password,
                    enableSuggestions: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      hintText: 'Enter your Password',

                      //  labelText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16.0,
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.password_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                    ),
                    maxLength: 20,
                  ),
                  const SizedBox(height: 55),
                  ElevatedButton(
                      style: ButtonTheme2,
                      onPressed: () async {},
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
          ],
        ),
      ),
    );
  }
}
