import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/authentication/domain/use_cases/use_cases.dart';

class NavigatorProvider extends StateNotifier<int> {
  NavigatorProvider() : super(5);
  void increaseValue() {
    state = NewUserUseCases.increaseValue(state);
  }

  void decreaseValue() {
    state = NewUserUseCases.decreaseValue(state);
  }
}
