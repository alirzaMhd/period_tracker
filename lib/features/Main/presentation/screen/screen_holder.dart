import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/provider/provider.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class ScreenHolder extends ConsumerWidget {
  const ScreenHolder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int pageIndex = ref.watch(ScreenHolderProvider.bottomBarProvider);
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: UIConstants.bottomTabBarPages,
      ),
      bottomNavigationBar: BottomBar(
          onTap: ref
              .read(ScreenHolderProvider.bottomBarProvider.notifier)
              .changePages),
    );
  }
}
