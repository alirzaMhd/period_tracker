import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/domain/provider/provider.dart';

class HomeProvider{
  static final monthNavigatorProvider =
    StateNotifierProvider<MonthNavigatorProvider, DateTime>(
        (ref) => MonthNavigatorProvider());
  static final selectDateProvider =
        StateNotifierProvider<SelectDateProvider, DateTime>(
            (ref) => SelectDateProvider());
}