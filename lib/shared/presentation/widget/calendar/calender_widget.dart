import 'package:flutter/material.dart';
import 'calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/presentation/provider/provider.dart';

class CalendarWidget extends ConsumerWidget {
  const CalendarWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime currentMonth = ref.watch(CalendarProvider.monthNavigatorProvider);

    return Column(
      children: [
        MonthNavigator(
          currentMonth: currentMonth,
          previousMonthFunction: () => ref
              .read(CalendarProvider.monthNavigatorProvider.notifier)
              .previousMonth(),
          nextMonthFunction: () => ref
              .read(CalendarProvider.monthNavigatorProvider.notifier)
              .previousMonth(),
        ),
        const WeekdayLabels(),
        CalendarDaysWidget(
          currentMonth: currentMonth,
        ),
      ],
    );
  }
}
