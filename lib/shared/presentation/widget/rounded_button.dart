import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String _text;
  final TextStyle textStyle;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    required text,
    required this.textStyle,
    required this.color,
    required this.width,
    required this.height,
    required this.onPressed,
  })  : _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        textStyle: MaterialStateProperty.all<TextStyle>(textStyle),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(UIConstants.roundedButtonCornerRoundness),
                ),
              ),
      ),
      child: Text(_text),
    );
  }
}
