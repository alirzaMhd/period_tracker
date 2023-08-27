import 'package:flutter/material.dart';
import 'calendar.dart';

class CalendarDaysWidget extends StatelessWidget {
  final DateTime currentMonth;
  final Function(DateTime) selectDate;
  const CalendarDaysWidget({
    super.key,
    required this.currentMonth,
    required this.selectDate,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> days = [];
    final DateTime firstDayOfMonth =
        DateTime(currentMonth.year, currentMonth.month, 1);
    final int daysInPreviousMonth = firstDayOfMonth.weekday - 1;
    final int daysInCurrentMonth =
        DateTime(currentMonth.year, currentMonth.month + 1, 0).day;

    // Add empty cells for previous month
    for (int i = 0; i < daysInPreviousMonth; i++) {
      final DateTime day =
          firstDayOfMonth.subtract(Duration(days: daysInPreviousMonth - i));
      days.add(DayCell(
        day: day,
        isCurrentMonth: false,
        selectDate: selectDate,
      ));
    }

    // Add cells for current month
    for (int i = 1; i <= daysInCurrentMonth; i++) {
      final DateTime day = DateTime(currentMonth.year, currentMonth.month, i);
      days.add(DayCell(
        day: day,
        isCurrentMonth: false,
        selectDate: selectDate,
      ));
    }

    // Add empty cells for next month
    int remainingCells = 35 - days.length;
    for (int i = 1; i <= remainingCells; i++) {
      final DateTime day =
          DateTime(currentMonth.year, currentMonth.month + 1, i);
      days.add(DayCell(
        day: day,
        isCurrentMonth: false,
        selectDate: selectDate,
      ));
    }

    return Column(
      children: List.generate(5, (index) {
        return Row(
          children: days.sublist(index * 7, (index * 7) + 7),
        );
      }),
    );
  }
}
