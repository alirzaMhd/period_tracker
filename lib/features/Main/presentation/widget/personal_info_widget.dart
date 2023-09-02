import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String username;
  const PersonalInfoWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          StringConstants.personalInfo,
          style: TextStylesConstants.bodyMedium(context)!.copyWith(
            color: Pallete.redColor,
            fontWeight: TextStylesConstants.regularFontWeight,
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          username,
          style: TextStylesConstants.headlineSmall(context)!.copyWith(
            color: Pallete.greyColor,
          ),
        ),
      ],
    );
  }
}
