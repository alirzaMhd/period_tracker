import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/authentication/domain/provider/provider.dart';
import 'package:period_tracker/features/authentication/presentation/widget/widget.dart';
import 'package:period_tracker/shared/presentation/widget/widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LengthGetterWidget extends ConsumerWidget {
  final String text;
  final int navigatorInitValue;
  const LengthGetterWidget({
    super.key,
    required this.text,
    required this.navigatorInitValue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigatorProvider =
        StateNotifierProvider<NavigatorProvider, int>((ref) {
      return NavigatorProvider(navigatorInitValue);
    });
    final int currentValue = ref.watch(navigatorProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStylesConstants.bodyLarge(context)!.copyWith(
            color: Pallete.greyColor,
          ),
        ),
        NavigatorWidget(
          currentValue: currentValue.toString(),
          previousFunction:()=> ref.read(navigatorProvider.notifier).decreaseValue(),
          nextFunction:()=> ref.read(navigatorProvider.notifier).increaseValue(),
        ),
        CustomCheckbox(
          width: 20.w,
          height: 20.h,
        )
      ],
    );
  }
}
