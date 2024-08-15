// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfields extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final IconData? icon;
  final TextInputType textInputType;

  const Textfields({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.isPass = false,
    required this.icon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: textEditingController,
        obscureText: isPass,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 18,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFedf0f8),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2, color: Color.fromARGB(255, 200, 220, 237)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
