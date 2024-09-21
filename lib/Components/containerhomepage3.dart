import 'package:flutter/material.dart';

class Containerhomepage3 extends StatefulWidget {
  const Containerhomepage3({super.key});

  @override
  State<Containerhomepage3> createState() => _Containerhomepage3State();
}

class _Containerhomepage3State extends State<Containerhomepage3> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(),
          );
        } else {
          return Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(),
          );
        }
      },
    );
  }
}
