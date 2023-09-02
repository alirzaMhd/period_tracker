import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const ProfileButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Pallete.whiteColor,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            blurRadius: 20.0,
            spreadRadius: -3.0,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 16.0.w),
              Expanded(
                child: Text(
                  text,
                  style: TextStylesConstants.bodyMedium(context)!
                      .copyWith(color: Pallete.greyColor),
                ),
              ),
              const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
