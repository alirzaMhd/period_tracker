import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/authentication/domain/use_cases/use_cases.dart';

class CheckBoxProvider extends StateNotifier<bool> {
  CheckBoxProvider() : super(false);

  void toggleCheckbox() {
    state = NewUserUseCases.toggleCheckBox(state);
  }
}
