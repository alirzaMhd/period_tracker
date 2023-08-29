import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigatorProvider extends StateNotifier<int> {
  final int initValue;
  NavigatorProvider(this.initValue) : super(initValue);
  void increaseValue() {
    state++;
  }

  void decreaseValue() {
    state--;
  }
}
