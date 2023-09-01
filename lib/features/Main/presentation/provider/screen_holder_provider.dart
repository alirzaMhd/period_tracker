import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/Main/domain/provider/provider.dart';

class ScreenHolderProvider{
  static final bottomBarProvider =
        StateNotifierProvider<BottomBarProvider, int>(
            (ref) => BottomBarProvider());
}