import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class CalendarTips extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final String tips;

  const CalendarTips(
      {super.key, this.backgroundColor, this.borderColor, required this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: borderColor != null
                ? Border.all(
                    color: borderColor!,
                    width: 1,
                  )
                : null,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          tips,
          style: TextStylesConstants.bodyMedium(context)!
              .copyWith(color: Pallete.greyColor),
        ),
      ],
    );
  }
}
