import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButts extends StatefulWidget {
  final String iconss;
  void Function()? onTap;
  IconButts({super.key, required this.iconss, required this.onTap});

  @override
  State<IconButts> createState() => _IconButtsState();
}

class _IconButtsState extends State<IconButts> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Image.asset(
        widget.iconss,
        height: 41,
        width: 41,
      ),
    );
  }
}
