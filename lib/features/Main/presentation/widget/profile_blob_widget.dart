import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';

class ProfileBlobWidget extends StatelessWidget {
  const ProfileBlobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 136.h,
          color: Pallete.greenColor,
        ),
        SizedBox(
          height: 112.h,
          width: 414.w,
          child: Image.asset(AssetsConstants.blobPic),
        )
      ],
    );
  }
}
