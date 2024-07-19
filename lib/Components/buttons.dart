import 'package:flutter/material.dart';

final ButtonTheme1 = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  elevation: 0.0,
  minimumSize: const Size(350, 50),
  side: const BorderSide(
    style: BorderStyle.solid,
  ),
);
final ButtonTheme2 = ElevatedButton.styleFrom(
  minimumSize: const Size(100, 45),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  elevation: 0.0,
);
