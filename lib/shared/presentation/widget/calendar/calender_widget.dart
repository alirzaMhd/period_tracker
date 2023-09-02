import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../widget.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime currentValue;
  final VoidCallback nextFunction;
  final VoidCallback previousFunction;

  final DateTime selectedDate;
  final Function(DateTime) selectDate;

  const CalendarWidget({
    super.key,
    required this.currentValue,
    required this.nextFunction,
    required this.previousFunction,
    required this.selectedDate,
    required this.selectDate,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavigatorWidget(
          height: 42.h,
          width: 215.w,
          currentValue: DateFormat.MMMM().format(currentValue),
          previousFunction: previousFunction,
          nextFunction: nextFunction,
        ),
        SizedBox(height: 20.h),
        const WeekdayLabels(),
        CalendarDaysWidget(
          currentMonth: currentValue,
          selectedDate :selectedDate,
          selectDate: selectDate,
        ),
      ],
    );
  }
}
