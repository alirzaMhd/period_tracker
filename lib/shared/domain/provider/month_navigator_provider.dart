import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/domain/use_cases/use_cases.dart';

class MonthNavigatorProvider extends StateNotifier<DateTime> {
  MonthNavigatorProvider() : super(CalendarUseCases.getCurrentMonth());

  void previousMonth() {
    state = CalendarUseCases.getPreviousMonth();
  }

  void nextMonth() {
    state = CalendarUseCases.getNextMonth();
  }
}
