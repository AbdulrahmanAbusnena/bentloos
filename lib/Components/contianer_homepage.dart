import 'package:flutter/material.dart';

class ContianerHomepage extends StatefulWidget {
  const ContianerHomepage({super.key});

  @override
  State<ContianerHomepage> createState() => _ContianerHomepageState();
}

class _ContianerHomepageState extends State<ContianerHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.5,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
