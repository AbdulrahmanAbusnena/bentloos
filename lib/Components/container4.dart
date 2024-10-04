import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Circular border
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Circular clipping
              child: Image.asset(
                'assets/graph2.jpeg',
                width: 220,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text('Beverly Hill Pitch',
                  style: GoogleFonts.montserrat(
                    //  fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
