import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchHomepage extends StatefulWidget {
  const SearchHomepage({super.key});

  @override
  State<SearchHomepage> createState() => _SearchHomepageState();
}

class _SearchHomepageState extends State<SearchHomepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      padding: const EdgeInsets.all(25),
      child: Container(
        margin: const EdgeInsets.only(
          top: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff4b4b4b),
              //   blurRadius: 10,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter your desired location or serivce',
            hintStyle: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
            prefixIcon: const Icon(Icons.search_rounded, size: 35),
            filled: true,
            fillColor: Colors.white,
            hoverColor: Colors.black,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                // fotni
                color: Color(0xff000000),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
