import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReCards extends StatefulWidget {
  final String image;
  //  final String locationName;
  const ReCards(
      {super.key,
      //  required this.locationName,
      required this.image});

  @override
  State<ReCards> createState() => _ReCardsState();
}

class _ReCardsState extends State<ReCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(54.0),
      ),
      child: Card(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          widget.image,
          height: 210,
          width: 190,
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
