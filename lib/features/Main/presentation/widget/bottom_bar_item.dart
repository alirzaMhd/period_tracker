import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const BottomBarItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Pallete.redColor),
        Text(
          text,
          style: TextStylesConstants.bodyMedium(context)!
              .copyWith(color: Pallete.redColor),
        ),
      ],
    );
  }
}
