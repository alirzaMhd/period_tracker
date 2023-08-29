import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';
import './widget.dart';

class NavigatorWidget extends StatelessWidget {
  final String currentValue;
  final VoidCallback previousFunction;
  final VoidCallback nextFunction;

  const NavigatorWidget({
    super.key,
    required this.currentValue,
    required this.previousFunction,
    required this.nextFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigatorButton(
          onPressed:previousFunction,
          //TODO
          icon: const Icon(Icons.arrow_back),
        ),
        Expanded(
          child: Center(
            child: Text(
              currentValue,
              style: TextStylesConstants.headlineSmall(context)!.copyWith(
                color: Pallete.greyColor,
              ),
            ),
          ),
        ),
        NavigatorButton(
          onPressed: previousFunction,
          //TODO
          icon: const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
