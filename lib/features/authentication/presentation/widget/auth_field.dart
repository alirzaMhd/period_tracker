import 'package:flutter/material.dart';
import 'package:period_tracker/constants/constants.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final double width;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final String hintText;

  const AuthField({
    Key? key,
    required this.controller,
    required this.height,
    required this.width,
    required this.contentPaddingHorizontal,
    required this.contentPaddingVertical,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(UIConstants.authFieldRoundness),
        border: Border.all(
          color: Pallete.greyColor,
          width: .5,
        ),
      ),
      child: TextField(
        controller: controller,
        style: TextStylesConstants.bodyLarge(context)!.copyWith(
          color: Pallete.greyColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            horizontal: contentPaddingHorizontal,
            vertical: contentPaddingVertical,
          ),
        ),
      ),
    );
  }
}
