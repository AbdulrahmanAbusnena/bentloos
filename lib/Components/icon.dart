import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButts extends StatefulWidget {
  final String iconss;
  final double height;
  final double width;
  void Function()? onTap;
  IconButts(
      {super.key,
      required this.iconss,
      required this.onTap,
      required this.height,
      required this.width});

  @override
  State<IconButts> createState() => _IconButtsState();
}

class _IconButtsState extends State<IconButts> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Opacity(
        opacity: 0.9,
        child: Image.asset(
          widget.iconss,
          height: widget.height,
          width: widget.width,
        ),
      ),
    );
  }
}
