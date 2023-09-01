import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class ProfileTopWidget extends StatelessWidget {
  final String profilePic;
  final String username;
  const ProfileTopWidget({super.key, required this.profilePic, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 386.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Pallete.shadowColor,
            blurRadius: 20,
            offset: const Offset(0, 8),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              const ProfileBlobWidget(),
              Center(
                child: ProfileCircleWidget(profilePic: profilePic),
              )
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AssetsConstants.womanProfilePic),
                SizedBox(width: 43.w),
                PersonalInfoWidget(username: username)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
