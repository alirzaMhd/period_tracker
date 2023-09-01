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
          style: TextStylesConstants.bodyLarge(context)!.copyWith(
            color: Pallete.redColor,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          username,
          style: TextStylesConstants.headlineMedium(context)!.copyWith(
            color: Pallete.greyColor,
          ),
        ),
      ],
    );
  }
}
