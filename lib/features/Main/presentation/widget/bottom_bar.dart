import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class BottomBar extends StatelessWidget {
  final Function(int) onTap;
  const BottomBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 137.w,
      margin: EdgeInsets.only(bottom: 25.h, left: 35.w, right: 35.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Pallete.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarItem(
            icon: Icons.tips_and_updates,
            text: 'Tips',
            onTap: onTap,
            index: 0,
          ),
          BottomBarItem(
            icon: Icons.water_drop,
            text: 'Home',
            onTap: onTap,
            index: 1,
          ),
          BottomBarItem(
            icon: Icons.co_present_rounded,
            text: 'Profile',
            onTap: onTap,
            index: 2,
          ),
        ],
      ),
    );
  }
}
