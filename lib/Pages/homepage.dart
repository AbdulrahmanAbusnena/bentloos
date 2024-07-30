import 'package:bentlos/Components/buttons.dart';
import 'package:bentlos/Components/icon.dart';
import 'package:bentlos/Pages/ExtPage/hotels.dart';
// import 'package:bentlos/Pages/loginpage.dart';
import 'package:bentlos/Pages/registrationpage.dart';
import 'package:bentlos/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      backgroundColor: const Color(0xffECE6CB),
      appBar: AppBar(
        title: Text(
          'Bentlos',
          style: GoogleFonts.inknutAntiqua(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffECE6CB),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/earth-americas.png'),
          backgroundColor: Color(0xffECE6CB),
        ),
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            padding: const EdgeInsets.all(25),
            child: Container(
              margin: const EdgeInsets.only(
                //   right: 40,
                //    left: 40,
                top: 15,
                //   bottom: 50,
              ),
              decoration: BoxDecoration(
                //     color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff4b4b4b).withOpacity(0.11),
                      blurRadius: 100,
                      spreadRadius: 0.0),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded, size: 35),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 210,
            width: 390,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButts(
                        iconss: 'assets/hotel.png',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Hotels(),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
