import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
  double height;
  double width;

  Card3({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(25)),
    );
  }
}
