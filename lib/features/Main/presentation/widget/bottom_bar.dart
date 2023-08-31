import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: 137.w,
      margin: const EdgeInsets.only(bottom: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Pallete.redColor,width: 1),
        color: Pallete.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarItem(
            icon: Icons.tips_and_updates,
            text: 'Tips',
          ),
          BottomBarItem(
            icon: Icons.water_drop,
            text: 'Home',
          ),
          BottomBarItem(
            icon: Icons.co_present_rounded,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}