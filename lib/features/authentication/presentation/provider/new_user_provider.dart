import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/features/authentication/domain/provider/provider.dart';

class NewUserProvider {
  static final checkBoxCycleProvider =
      StateNotifierProvider<CheckBoxProvider, bool>(
          (ref) => CheckBoxProvider());
  static final checkBoxPeriodProvider =
      StateNotifierProvider<CheckBoxProvider, bool>(
          (ref) => CheckBoxProvider());
  
    static final navigatorCycleProvider =
        StateNotifierProvider<NavigatorProvider, int>((ref) {
      return NavigatorProvider();
    });
    
    static final navigatorPeriodProvider =
        StateNotifierProvider<NavigatorProvider, int>((ref) {
      return NavigatorProvider();
    });
}
