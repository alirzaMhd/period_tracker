import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';

class TipsForm extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final VoidCallback onPressed;

  const TipsForm({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(2, 3),
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 35.w),
      padding: EdgeInsets.all(12.w),
      child: Row(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(18.0)),
            child: Image.asset(imagePath),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStylesConstants.bodyLarge(context)!
                      .copyWith(color: Pallete.greyColor),
                ),
                const SizedBox(height: 10.0),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStylesConstants.bodyMedium(context)!.copyWith(
                    color: Pallete.greyColor,
                    fontWeight: TextStylesConstants.regularFontWeight,
                  ),
                ),
                const SizedBox(height: 6.0),
                RoundedButton(
                  text: StringConstants.view,
                  textStyle: TextStylesConstants.bodyMedium(context)!
                      .copyWith(color: Pallete.whiteColor),
                  color: Pallete.greenColor,
                  size: Size(70.w, 30.h),
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
