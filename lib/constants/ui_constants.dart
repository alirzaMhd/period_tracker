import 'package:flutter/material.dart';
import 'package:period_tracker/features/Main/presentation/screen/home.dart';
import 'package:period_tracker/features/Main/presentation/screen/tips.dart';
import 'package:period_tracker/features/Main/presentation/screen/profile.dart';


class UIConstants {
  static const double authFieldRoundness = 15;
  static const double roundedButtonCornerRoundness = 12;
  static const double dayCellRoundness = 14;
  static const double dayCellBorderWidth = 1;
  static const double monthNavigatorButtonIconSize = 24;
  static const double screenHeight = 896;
  static const double screenWidth = 414;
  static const List<String> weekdaysLabels = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S'
  ];
  static const List<Widget> bottomTabBarPages = [
    Tips(),
    Home(),
    Profile(),
  ];
}
