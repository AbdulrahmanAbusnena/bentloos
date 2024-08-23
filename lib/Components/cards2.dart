import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatefulWidget {
  final String image;
  final String locationName;
  const Cards({super.key, required this.locationName, required this.image});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(54.0),
        // Round corners for the card
      ),
      child: Stack(
        // Use Stack to overlay elements
        children: [
          ClipRRect(
            // Rounded image clip
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.image,
              height: 250, // Match image height to card height
              width: 200, // Match image width to card width
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            // Position text on top of the image
            bottom: 10.0, // Adjust vertical position from bottom
            left: 10.0, // Adjust horizontal position from left
            right: 4,
            child: Container(
              // Container for text styling

              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.locationName,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white, // Text color for visibility
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
