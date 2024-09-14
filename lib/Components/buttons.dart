import 'package:flutter/material.dart';

final buttonTheme1 = ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  elevation: 0.0,
  minimumSize: const Size(350, 50),
  side: const BorderSide(
    style: BorderStyle.solid,
  ),
);
final buttonTheme3 = ElevatedButton.styleFrom(
  backgroundColor: Colors.green[300],
  foregroundColor: Colors.black,
  elevation: 0.0,
  minimumSize: const Size(330, 60),
  // side: const BorderSide(
  //   style: BorderStyle.solid,
  // ),
);
final buttonTheme2 = ElevatedButton.styleFrom(
  minimumSize: const Size(100, 45),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  elevation: 0.0,
);
