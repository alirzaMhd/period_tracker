import 'package:flutter/material.dart';

class ButtonStylesConstants {
  static ButtonStyle textButtonStyle() {
    return ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      textStyle: MaterialStateProperty.all(
          const TextStyle(decoration: TextDecoration.none)),
    );
  }
}
