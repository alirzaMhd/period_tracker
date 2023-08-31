import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/features/authentication/presentation/provider/provider.dart';
import 'package:period_tracker/features/authentication/presentation/widget/widget.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';

class NewUser extends ConsumerWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isCheckedCycle = ref.watch(NewUserProvider.checkBoxCycleProvider);
    bool isCheckedPeriod = ref.watch(NewUserProvider.checkBoxPeriodProvider);
    int currentCycleValue = ref.watch(NewUserProvider.navigatorCycleProvider);
    int currentPeriodValue = ref.watch(NewUserProvider.navigatorPeriodProvider);
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                AssetsConstants.newUserPic,
                width: 340.h,
                height: 340.h,
              ),
            ),
            SizedBox(
              height: 20.h,
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
            SizedBox(height: 10.h),
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
              width: 270.w,
              height: 60.h,
              contentPaddingHorizontal: 18.w,
              contentPaddingVertical: 14.h,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 250.w,
              child: LengthGetterWidget(
                text: StringConstants.yourCycleLength,
                navigatorInitValue: 5,
                isChecked: isCheckedCycle,
                checkboxOnTap: () => ref
                    .read(NewUserProvider.checkBoxCycleProvider.notifier)
                    .toggleCheckbox(),
                currentValue: currentCycleValue,
                previousFunction: () => ref
                    .read(NewUserProvider.navigatorCycleProvider.notifier)
                    .decreaseValue(),
                nextFunction: () => ref
                    .read(NewUserProvider.navigatorCycleProvider.notifier)
                    .increaseValue(),
              ),
            ),
            SizedBox(
              width: 250.w,
              child: LengthGetterWidget(
                text: StringConstants.yourPeriodLength,
                navigatorInitValue: 5,
                isChecked: isCheckedPeriod,
                checkboxOnTap: () => ref
                    .read(NewUserProvider.checkBoxPeriodProvider.notifier)
                    .toggleCheckbox(),
                currentValue: currentPeriodValue,
                previousFunction: () => ref
                    .read(NewUserProvider.navigatorPeriodProvider.notifier)
                    .decreaseValue(),
                nextFunction: () => ref
                    .read(NewUserProvider.navigatorPeriodProvider.notifier)
                    .increaseValue(),
              ),
            ),
            SizedBox(height: 30.h),
            RoundedButton(
              text: StringConstants.next,
              textStyle: TextStylesConstants.bodyLarge(context)!
                  .copyWith(color: Pallete.whiteColor),
              color: Pallete.redColor,
              size: Size(230.w, 50.h),
              onPressed: () {},
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.w),
              child: Text(
                StringConstants.rememberEveryOneIsUnique,
                style: TextStylesConstants.bodyMedium(context)!.copyWith(
                  color: Pallete.greenColor,
                  fontWeight: TextStylesConstants.regularFontWeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
