
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/authentication/domain/provider/provider.dart';

class LastPeriodGetterProvider {
  static final monthNavigatorProvider =
    StateNotifierProvider<MonthNavigatorProvider, DateTime>(
        (ref) => MonthNavigatorProvider());
  static final selectDateProvider =
        StateNotifierProvider<SelectDateProvider, DateTime>(
            (ref) => SelectDateProvider());
}

