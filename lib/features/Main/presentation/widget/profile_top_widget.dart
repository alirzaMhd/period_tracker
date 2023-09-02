import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class ProfileTopWidget extends StatelessWidget {
  final String profilePic;
  final String username;
  const ProfileTopWidget(
      {super.key, required this.profilePic, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 386.h,
      decoration: BoxDecoration(
        color: Pallete.whiteColor,
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
            alignment: Alignment.bottomCenter,
            children: [
              const ProfileBlobWidget(),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: SizedBox(
                    height: 125.w,
                    width: 125.w,
                    child: CircleAvatar(
                      radius: 50, // Adjust the radius as per your requirement
                      backgroundImage: AssetImage(
                          profilePic), // Replace with your image path
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height:15.h),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AssetsConstants.womanProfilePic),
                SizedBox(width: 113.w),
                PersonalInfoWidget(username: username)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
