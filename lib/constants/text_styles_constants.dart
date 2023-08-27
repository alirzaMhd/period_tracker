import 'package:flutter/material.dart';
import 'pallete.dart';

class TextStylesConstants {
  static const String caremSansFontFamily = 'CarmenSans';

  static const double headLargeFontSize = 35;
  static const double headMediumFontSize = 30;
  static const double headSmallFontSize = 25;

  static const double bodyLargeFontSize = 20;
  static const double bodyMediumFontSize = 15;

  static TextStyle? headlineLarge(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headLargeFontSize,
        );
  }

  static TextStyle? headlineMedium(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headMediumFontSize,
        );
  }

  static TextStyle? headlineSmall(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headSmallFontSize,
        );
  }

  static TextStyle? bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
        );
  }

  static TextStyle? bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
        );
  }

}
