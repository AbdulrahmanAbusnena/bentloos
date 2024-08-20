import 'package:flutter/material.dart';

class DynamicSize {
  BuildContext context;

  DynamicSize(this.context);

  double w(double widthPercent, {bool above100 = false}) {
    // For Text.fontSize() use only this.w
    if (widthPercent <= 300 || above100) {
      double percent = widthPercent / 100;
      return MediaQuery.of(context).size.width * percent;
    } else {
      throw Exception('Width above a 100%, and above100 is false');
    }
  }

  double h(double heightPercent, {bool above100 = false}) {
    if (heightPercent <= 100 || above100) {
      double percent = heightPercent / 100;
      return MediaQuery.of(context).size.height * percent -
          kBottomNavigationBarHeight;
    } else {
      throw Exception('Height above a 100%, and above100 is false');
    }
  }
}
