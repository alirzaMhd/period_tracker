import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckBoxProvider extends StateNotifier<bool> {
  CheckBoxProvider() : super(false);
  void onTap() {
    state = !state;
  }
}