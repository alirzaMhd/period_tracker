import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/Main/domain/use_cases/use_cases.dart';

class BottomBarProvider extends StateNotifier<int> {
  BottomBarProvider() : super(1);

  void changePages(int pageIndex) {
    state = ScreenHolderUseCases.changePageIndex(pageIndex);
  }
}