import 'package:flutter/material.dart';

class TextStylesConstants {
  //TODO make font sizes responsive
  static const String caremSansFontFamily = 'CarmenSans';

  static const double headLargeFontSize = 30;
  static const double headMediumFontSize = 25;
  static const double headSmallFontSize = 20;

  static const double bodyLargeFontSize = 15;
  static const double bodyMediumFontSize = 10;

  static const FontWeight heavyFontWeight = FontWeight.w900;
  static const FontWeight regularFontWeight = FontWeight.w900;

  static TextStyle? headlineLarge(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headLargeFontSize,
          fontWeight: heavyFontWeight,
        );
  }

  static TextStyle? headlineMedium(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headMediumFontSize,
          fontWeight: heavyFontWeight,
        );
  }

  static TextStyle? headlineSmall(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headSmallFontSize,
          fontWeight: heavyFontWeight,
        );
  }

  static TextStyle? bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
          fontWeight: heavyFontWeight,
        );
  }

  static TextStyle? bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          fontWeight: heavyFontWeight,
        );
  }

}
