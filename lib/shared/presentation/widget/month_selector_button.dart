import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class MonthSelectorButton extends StatelessWidget {
  final Icon _icon;
  final VoidCallback onPressed;

  const MonthSelectorButton({
    Key? key,
    required icon,
    required this.onPressed,
  })  : _icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _icon,
      iconSize: UIConstants.monthSelectorButtonIconSize,
      color: Pallete.redColor,
      onPressed: onPressed,
    );
  }
}
