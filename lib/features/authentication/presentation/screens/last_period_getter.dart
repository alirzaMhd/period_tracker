import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/features/authentication/presentation/provider/provider.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';

class LastPeriodGetter extends ConsumerWidget {
  const LastPeriodGetter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime monthNavigator =
        ref.watch(LastPeriodGetterProvider.monthNavigatorProvider);
    DateTime selectDate =
        ref.watch(LastPeriodGetterProvider.selectDateProvider);
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Image.asset(
                AssetsConstants.calenderPic,
                width: 340.h,
                height: 340.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 82.w),
              child: Text(
                StringConstants.whenWasYourLastPeriod,
                textAlign: TextAlign.center,
                style: TextStylesConstants.headlineLarge(context)!
                    .copyWith(color: Pallete.redColor),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 200.w,
              height: 290.h,
              child: CalendarWidget(
                currentValue: monthNavigator,
                previousFunction: () => ref
                    .read(LastPeriodGetterProvider
                        .monthNavigatorProvider.notifier)
                    .previousMonth(),
                nextFunction: () => ref
                    .read(LastPeriodGetterProvider
                        .monthNavigatorProvider.notifier)
                    .nextMonth(),
                selectedDate: selectDate,
                selectDate: hhhh,
              ),
            ),
            SizedBox(height: 40.h),
            RoundedButton(
              text: StringConstants.next,
              textStyle: TextStylesConstants.bodyLarge(context)!
                  .copyWith(color: Pallete.whiteColor),
              color: Pallete.redColor,
              size: Size(230.w, 50.h),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

hhhh(DateTime dateTime) {
  // print(dateTime);
}
