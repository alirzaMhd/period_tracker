import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/shared/domain/use_cases/use_cases.dart';


class SelectDateProvider extends StateNotifier<DateTime> {
  SelectDateProvider() : super(CalendarUseCases.initSelectedDay());

  void selectDate(DateTime day) {
    state = day;
  }

}
