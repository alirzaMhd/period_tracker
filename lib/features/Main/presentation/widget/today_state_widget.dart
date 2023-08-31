import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class TodayStateWidget extends StatelessWidget {
  final String fertilityText;
  final String periodAlarmText;
  final String cycleAlarmText;

  const TodayStateWidget({
    Key? key,
    required this.fertilityText,
    required this.periodAlarmText,
    required this.cycleAlarmText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 250.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fertilityText,
                style: TextStylesConstants.bodyMedium(context)!
                    .copyWith(color: Pallete.greyColor)),
            Text(periodAlarmText,
                style: TextStylesConstants.bodyMedium(context)!
                    .copyWith(color: Pallete.greyColor)),
            Text(cycleAlarmText,
                style: TextStylesConstants.bodyMedium(context)!
                    .copyWith(color: Pallete.greyColor)),
          ],
        ),
      ),
    );
  }
}
