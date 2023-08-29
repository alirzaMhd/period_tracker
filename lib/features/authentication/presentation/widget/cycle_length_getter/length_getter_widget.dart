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
  final bool isChecked;
  final VoidCallback checkboxOnTap;

  final int currentValue;

  final VoidCallback nextFunction;

  final VoidCallback previousFunction;
  const LengthGetterWidget({
    super.key,
    required this.text,
    required this.navigatorInitValue,
    required this.isChecked,
    required this.checkboxOnTap,
    required this.currentValue,
    required this.nextFunction,
    required this.previousFunction,
  });
  void _handleButtonPress() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 291.w,
      height: 42.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStylesConstants.bodyLarge(context)!.copyWith(
              color: Pallete.greyColor,
            ),
          ),
          Center(
            child: NavigatorWidget(
              height: 42.h,
              width: 92.w,
              currentValue: currentValue.toString(),
              previousFunction: previousFunction,
              nextFunction: nextFunction,
            ),
          ),
          CustomCheckbox(
            width: 15.w,
            height: 15.w,
            isChecked: isChecked,
            checkboxOnTap: checkboxOnTap,
          )
        ],
      ),
    );
  }
}
