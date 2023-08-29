import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Image.asset(
              AssetsConstants.splashPic,
              width: 414.w,
              height: 394.h,
            ),
            SizedBox(
              height: 37.h,
            ),
            Text(
              StringConstants.predictYourPeriod,
              style: TextStylesConstants.headlineLarge(context)!
                  .copyWith(color: Pallete.redColor),
            ),
            Text(
              StringConstants.liveCalmly,
              style: TextStylesConstants.headlineMedium(context)!
                  .copyWith(color: Pallete.greenColor),
            ),
            SizedBox(
              height: 50.h,
            ),
            RoundedButton(
              text: StringConstants.newUser,
              textStyle: TextStylesConstants.bodyLarge(context)!
                  .copyWith(color: Pallete.whiteColor),
              color: Pallete.redColor,
              size: Size(300.w, 69.h),
              onPressed: () {},
            ),
            SizedBox(
              height: 10.h,
            ),
            TextButton(
              style: ButtonStylesConstants.textButtonStyle(),
              child: Text(
                StringConstants.restoreData,
                style: TextStylesConstants.bodyLarge(context)!.copyWith(
                  color: Pallete.greenColor,
                  fontWeight: TextStylesConstants.regularFontWeight,
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 90.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 74.w),
              child: TextButton(
                style: ButtonStylesConstants.textButtonStyle(),
                child: Text(
                  StringConstants.continueToAcceptTerm,
                  style: TextStylesConstants.bodyMedium(context)!.copyWith(
                    color: Pallete.redColor,
                    fontWeight: TextStylesConstants.regularFontWeight,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
