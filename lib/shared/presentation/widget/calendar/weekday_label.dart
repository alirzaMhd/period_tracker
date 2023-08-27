import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class WeekdayLabels extends StatelessWidget {
  const WeekdayLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: UIConstants.weekdaysLabels.map(
        (day) {
          return Expanded(
            child: Center(
              child: Text(
                day,
                style: TextStylesConstants.bodyMedium(context)?.copyWith(
                  color: Pallete.lightGreyColor,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
