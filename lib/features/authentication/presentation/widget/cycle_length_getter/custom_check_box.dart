import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class CustomCheckbox extends StatelessWidget {
  final double height;
  final double width;
  final bool isChecked;
  final VoidCallback checkboxOnTap;

  const CustomCheckbox({
    Key? key,
    required this.checkboxOnTap,
    required this.isChecked,
    required this.height,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: checkboxOnTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isChecked ? Pallete.greenColor : null,
          border: Border.all(color: Pallete.greyColor, width: 1.5),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
