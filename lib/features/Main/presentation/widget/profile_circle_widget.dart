import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class ProfileCircleWidget extends StatelessWidget {
  final String profilePic;
  const ProfileCircleWidget({super.key, required this.profilePic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            blurRadius: 15,
            offset: const Offset(0, 2),
            spreadRadius: 7,
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(profilePic), // Replace with your own image
      ),
    );
  }
}
