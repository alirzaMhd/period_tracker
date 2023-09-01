import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function(int) onTap;
  final int index;
  const BottomBarItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Pallete.redColor),
          Text(
            text,
            style: TextStylesConstants.bodyMedium(context)!
                .copyWith(color: Pallete.redColor),
          ),
        ],
      ),
    );
  }
}
