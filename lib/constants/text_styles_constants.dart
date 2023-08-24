import 'package:flutter/material.dart';
import 'pallete.dart';

class TextStylesConstants {
  static const String caremSansFontFamily = 'CarmenSans';

  static const double headLargeFontSize = 35;
  static const double headMediumFontSize = 30;
  static const double headSmallFontSize = 25;

  static const double bodyLargeFontSize = 20;
  static const double bodyMediumFontSize = 15;

  static TextStyle? headlineLargeRed(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headLargeFontSize,
          color: Pallete.redColor,
        );
  }

  static TextStyle? headlineMediumRed(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headMediumFontSize,
          color: Pallete.redColor,
        );
  }

  static TextStyle? headlineMediumGreen(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headMediumFontSize,
          color: Pallete.greenColor,
        );
  }

  static TextStyle? headlineSmallGreen(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headSmallFontSize,
          color: Pallete.greenColor,
        );
  }

  static TextStyle? headlineSmallWhite(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: headSmallFontSize,
          color: Pallete.whiteColor,
        );
  }

  static TextStyle? bodyLargeWhite(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
          color: Pallete.whiteColor,
        );
  }

  static TextStyle? bodyLargeGrey(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
          color: Pallete.greyColor,
        );
  }

  
  static TextStyle? bodyLargeBlack(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
          color: Pallete.blackColor,
        );
  }

  
  static TextStyle? bodyMediumRed(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.redColor,
        );
  }

  static TextStyle? bodyMediumGreen(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.greenColor,
        );
  }

  static TextStyle? bodyMediumGrey(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.greyColor,
        );
  }
  
  static TextStyle? bodyMediumLightGrey(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.lightGreyColor,
        );
  }

  static TextStyle? bodyMediumBlack(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.blackColor,
        );
  }

  static TextStyle? bodyMediumWhite(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          color: Pallete.whiteColor,
        );
  }
}
