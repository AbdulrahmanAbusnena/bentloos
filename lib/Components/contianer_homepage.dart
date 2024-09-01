import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ContianerHomepage extends StatefulWidget {
  String imagepath;
  String text;
  double height;
  double width;
  double imageheight;

  ContianerHomepage({
    super.key,
    required this.width,
    required this.height,
    required this.imagepath,
    required this.text,
    required this.imageheight,
    // required this.imagewidth,
  });
  @override
  State<ContianerHomepage> createState() => _ContianerHomepageState();
}

class _ContianerHomepageState extends State<ContianerHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xff4b4b4b),
            blurRadius: 2,
            offset: Offset(0, 2),
            //  spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 255, 251, 251),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            widget.imagepath,
            height: widget.imageheight,
          ),
          const SizedBox(width: 15),
          Text(
            widget.text,
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
