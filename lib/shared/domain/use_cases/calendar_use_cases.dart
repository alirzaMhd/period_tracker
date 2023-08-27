import 'package:flutter/material.dart';
import 'package:period_tracker/shared/presentation/widget/calendar/calendar.dart';

class CalendarUseCases {
  static DateTime getCurrentMonth() {
    DateTime currentMonth = DateTime(DateTime.now().year, DateTime.now().month);
    return currentMonth;
  }

  static DateTime getPreviousMonth() {
    DateTime previousMonth =
        DateTime(DateTime.now().year, DateTime.now().month - 1);
    return previousMonth;
  }

  static DateTime getNextMonth() {
    DateTime nextMonth =
        DateTime(DateTime.now().year, DateTime.now().month + 1);
    return nextMonth;
  }

  static DateTime initSelectedDay() {
    return DateTime.now();
  }

  static bool isSelected(
      {required DateTime day, required DateTime selectedDate}) {
    final bool isSelected = day.isAtSameMomentAs(selectedDate);

    return isSelected;
  }

  static bool isToday({required DateTime day}) {
    final bool isToday = day.isAtSameMomentAs(DateTime.now());

    return isToday;
  }

  static bool isOccasionOrSelected(
      {required bool isPeriodDay,
      required bool isOvulationDay,
      required bool isSelected}) {
    final bool isOccasionOrSelected =
        isPeriodDay || isOvulationDay || isSelected;

    return isOccasionOrSelected;
  }

  static bool isPeriodDay(
      {required DateTime day,
      required DateTime periodDay,
      required int howMuchPeriodTakes}) {
    final bool isPeriodDay = day.difference(periodDay).inDays >= 0 &&
        day.difference(periodDay).inDays <= howMuchPeriodTakes;

    return isPeriodDay;
  }

  static bool isOvulationDay(
      {required DateTime day,
      required DateTime ovulationDay,
      required int howMuchOvulationTakes}) {
    final bool isOvulationDay = day.difference(ovulationDay).inDays >= 0 &&
        day.difference(ovulationDay).inDays <= howMuchOvulationTakes;

    return isOvulationDay;
  }

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
      ));
    }

    // Add cells for current month
    for (int i = 1; i <= daysInCurrentMonth; i++) {
      final DateTime day = DateTime(currentMonth.year, currentMonth.month, i);
      days.add(DayCell(
        day: day,
        isCurrentMonth: false,
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
      ));
    }
    return days;
  }
}