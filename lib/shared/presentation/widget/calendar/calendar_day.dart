import 'package:flutter/material.dart';
import 'package:period_tracker/shared/domain/use_cases/use_cases.dart';

class CalendarDaysWidget extends StatelessWidget {
  final DateTime currentMonth;
  const CalendarDaysWidget({
    super.key,
    required this.currentMonth,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> days = CalendarUseCases.fillCalendarDays(currentMonth: currentMonth);
    return Column(
      children: List.generate(5, (index) {
        return Row(
          children: days.sublist(index * 7, (index * 7) + 7),
        );
      }),
    );
  }
}
