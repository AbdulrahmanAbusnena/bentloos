import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextControl extends StatefulWidget {
  final sectionName;
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
      height: 105,
      width: 430,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
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
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              const Spacer(),
              GestureDetector(
                onTap: widget.onTap,
                child: const Icon(
                  Icons.settings,
                  size: 30,
                ),
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
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
