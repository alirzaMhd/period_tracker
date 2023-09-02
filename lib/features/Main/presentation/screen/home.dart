import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/provider/provider.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime monthNavigator = ref.watch(HomeProvider.monthNavigatorProvider);
    DateTime selectDate = ref.watch(HomeProvider.selectDateProvider);

    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(
              height: 248.w,
              width: 280.w,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Image.asset(
                      AssetsConstants.womanMainPic,
                      width: 68.w,
                      height: 132.h,
                    ),
                  ),
                  // Second Image
                  const Center(
                    child: TodayStateWidget(
                      fertilityText: "fertilityText",
                      periodAlarmText: "periodAlarmText",
                      cycleAlarmText: "cycleAlarmText",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      AssetsConstants.sanitaryNapkinPic,
                      width: 114.w,
                      height: 78.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              padding: EdgeInsets.only(left: 110.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CalendarTips(
                        tips: StringConstants.periodStarts,
                        backgroundColor: Pallete.redColor,
                      ),
                      SizedBox(height: 8.h),
                      const CalendarTips(
                        tips: StringConstants.periodTime,
                        backgroundColor: Pallete.lightRedColor,
                      ),
                      SizedBox(height: 8.h),
                      const CalendarTips(
                        tips: StringConstants.today,
                        borderColor: Pallete.redColor,
                      ),
                    ],
                  ),
                  SizedBox(width: 25.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CalendarTips(
                        tips: StringConstants.fertilityWindow,
                        backgroundColor: Pallete.greenColor,
                      ),
                      SizedBox(height: 8.h),
                      const CalendarTips(
                        tips: StringConstants.ovulationDay,
                        backgroundColor: Pallete.lightGreenColor,
                      ),
                      SizedBox(height: 8.h),
                      const CalendarTips(
                        tips: StringConstants.selectedDate,
                        borderColor: Pallete.greenColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: 230.w,
              height: 330.h,
              //TODO fix period/ ovulation days
              child: CalendarWidget(
                currentValue: monthNavigator,
                previousFunction: () => ref
                    .read(HomeProvider.monthNavigatorProvider.notifier)
                    .previousMonth(),
                nextFunction: () => ref
                    .read(HomeProvider.monthNavigatorProvider.notifier)
                    .nextMonth(),
                selectedDate: selectDate,
                selectDate: ref
                    .read(HomeProvider.selectDateProvider.notifier)
                    .selectDate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
