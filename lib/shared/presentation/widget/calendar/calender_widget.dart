import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/domain/provider/provider.dart';
import '../widget.dart';

class CalendarWidget extends ConsumerWidget {
  
  static final monthNavigatorProvider =
      StateNotifierProvider<MonthNavigatorProvider, DateTime>(
          (ref) => MonthNavigatorProvider());
  const CalendarWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime currentMonth =
        ref.watch(monthNavigatorProvider);

    return Column(
      children: [
        NavigatorWidget(
          currentValue: DateFormat.MMMM().format(currentMonth),
          previousFunction: () => ref
              .read(monthNavigatorProvider.notifier)
              .previousMonth(),
          nextFunction: () => ref
              .read(monthNavigatorProvider.notifier)
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
