import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';
import '../widget/widget.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Image.asset(
              AssetsConstants.newUserPic,
              width: 340.w,
              height: 340.h,
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                StringConstants.giveInfoAboutYourself,
                textAlign: TextAlign.center,
                style: TextStylesConstants.headlineLarge(context)!
                    .copyWith(color: Pallete.redColor),
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 94.w),
              child: Text(
                StringConstants.checkIfNotSure,
                textAlign: TextAlign.center,
                style: TextStylesConstants.bodyLarge(context)!.copyWith(
                  color: Pallete.greenColor,
                  fontWeight: TextStylesConstants.regularFontWeight,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AuthField(
              controller: TextEditingController(),
              hintText: StringConstants.enterYourName,
              width: 300.w,
              height: 60.h,
              contentPaddingHorizontal: 18.w,
              contentPaddingVertical: 14.h,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 291.w,
              child: const LengthGetterWidget(
                text: StringConstants.yourCycleLength,
                navigatorInitValue: 5,
              ),
            ),
            SizedBox(height: 9.h),
            SizedBox(
              width: 291.w,
              child: const LengthGetterWidget(
                text: StringConstants.yourPeriodLength,
                navigatorInitValue: 28,
              ),
            ),
            SizedBox(height: 9.h),
            RoundedButton(
              text: StringConstants.next,
              textStyle: TextStylesConstants.bodyLarge(context)!
                  .copyWith(color: Pallete.whiteColor),
              color: Pallete.redColor,
              size: Size(247.w, 41.h),
              onPressed: () {},
            ),
            SizedBox(height: 9.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 137.w),
              child: Text(
                StringConstants.rememberEveryOneIsUnique,
                style: TextStylesConstants.bodyMedium(context)!.copyWith(
                  color: Pallete.greenColor,
                  fontWeight: TextStylesConstants.regularFontWeight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
