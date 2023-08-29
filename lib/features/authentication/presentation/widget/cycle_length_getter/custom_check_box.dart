import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/authentication/domain/provider/provider.dart';

class CustomCheckbox extends ConsumerWidget {
  final double height;
  final double width;

  const CustomCheckbox({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkBoxProvider = StateNotifierProvider<CheckBoxProvider, bool>(
        (ref) => CheckBoxProvider());
    final bool value = ref.watch(checkBoxProvider);
    return InkWell(
      onTap: () => ref.read(checkBoxProvider.notifier).onTap(),
      child: Container(
        width: width,
        height: height,
        color: value ? Pallete.greenColor : null,
        decoration: BoxDecoration(
          border: Border.all(color: Pallete.greyColor, width: 1.5),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
