import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import './widget.dart';

class NavigatorWidget extends StatelessWidget {
  final String currentValue;
  final double height;
  final double width;
  final VoidCallback previousFunction;
  final VoidCallback nextFunction;

  const NavigatorWidget({
    super.key,
    required this.currentValue,
    required this.previousFunction,
    required this.nextFunction,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigatorButton(
            onPressed: previousFunction,
            icon: Icon(Icons.arrow_back_ios_outlined, size: 16.sp),
          ),
          Center(
            child: Text(
              currentValue,
              style: TextStylesConstants.bodyLarge(context)!.copyWith(
                color: Pallete.greyColor,
              ),
            ),
          ),
          NavigatorButton(
            onPressed: nextFunction,
            icon: Icon(Icons.arrow_forward_ios_outlined, size: 16.sp),
          ),
        ],
      ),
    );
  }
}
