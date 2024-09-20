import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextControl extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final sectionName;
  // ignore: prefer_typing_uninitialized_variables
  final name;
  void Function()? onTap;

  TextControl(
      {super.key,
      required this.name,
      required this.sectionName,
      required this.onTap});

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 410,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 131, 131, 131),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Text(widget.sectionName,
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              const Spacer(),
              GestureDetector(
                onTap: widget.onTap,
                child: const Icon(
                  Icons.edit_outlined,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.black54,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Text(widget.name,
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
