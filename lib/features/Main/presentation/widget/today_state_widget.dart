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
      width: 225.w,
      height: 225.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: Pallete.redColor),
        color: Pallete.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: SizedBox(
          height: 135.h,
          width: 196.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fertilityText,
                  style: TextStylesConstants.bodyLarge(context)!
                      .copyWith(color: Pallete.greyColor)),
              // SizedBox(width: 500.w),
              Text(periodAlarmText,
                  style: TextStylesConstants.bodyLarge(context)!
                      .copyWith(color: Pallete.greyColor)),
              // SizedBox(width: 23.w),
              Text(cycleAlarmText,
                  style: TextStylesConstants.bodyLarge(context)!
                      .copyWith(color: Pallete.greyColor)),
            ],
          ),
        ),
      ),
    );
  }
}
