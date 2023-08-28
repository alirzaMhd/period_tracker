import 'package:flutter/material.dart';
import 'package:period_tracker/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/constants.dart';
import 'features/authentication/presentation/screens/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(UIConstants.screenWidth, UIConstants.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.themeLight,
          home: const SplashScreen(),
        );
      },
    );
  }
}
