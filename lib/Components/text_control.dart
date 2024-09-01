import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'size.dart';

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
    var size = DynamicSize(context);
    return Container(
      height: size.h(20),
      width: size.w(90),
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
                      fontSize: size.w(4.5),
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              const Spacer(),
              GestureDetector(
                onTap: widget.onTap,
                child: Icon(
                  Icons.settings_outlined,
                  size: size.w(6),
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
                      fontSize: size.w(4),
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
