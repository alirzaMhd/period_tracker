import 'package:flutter/material.dart';
import 'calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/domain/provider/provider.dart';

final monthNavigatorProvider =
    StateNotifierProvider<MonthNavigatorProvider, DateTime>(
        (ref) => MonthNavigatorProvider());

class CalendarWidget extends ConsumerWidget {
  const CalendarWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime currentMonth = ref.watch(monthNavigatorProvider);
    return Column(
      children: [
        MonthNavigator(
          currentMonth: currentMonth,
          previousMonthFunction: () =>
              ref.read(monthNavigatorProvider.notifier).previousMonth(),
          nextMonthFunction: () =>
              ref.read(monthNavigatorProvider.notifier).previousMonth(),
        ),
      ],
    );
  }
}
