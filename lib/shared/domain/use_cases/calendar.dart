import 'package:flutter/material.dart';
import 'package:period_tracker/shared/presentation/widget/calendar/calendar.dart';

class Calendar {
  static List<Widget> fillCalendarDays({required DateTime currentMonth}) {
    List<Widget> days = [];
    final DateTime firstDayOfMonth =
        DateTime(currentMonth.year, currentMonth.month, 1);
    final int daysInPreviousMonth = firstDayOfMonth.weekday - 1;
    final int daysInCurrentMonth =
        DateTime(currentMonth.year, currentMonth.month + 1, 0).day;

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
    return days;
  }

  static DateTime selectDate(DateTime selectedDate) {
    return selectedDate;
  }
}
