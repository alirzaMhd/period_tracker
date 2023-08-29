import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigatorProvider extends StateNotifier<int> {
  NavigatorProvider() : super(5);
  void increaseValue() {
    state++;
  }

  void decreaseValue() {
    state--;
  }
}
