import 'package:period_tracker/shared/domain/provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarProvider {
  static final monthNavigatorProvider =
      StateNotifierProvider<MonthNavigatorProvider, DateTime>(
          (ref) => MonthNavigatorProvider());
          
  static final selectDateProvider =
      StateNotifierProvider<SelectDateProvider, DateTime>(
          (ref) => SelectDateProvider());
}
