import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/profile_button.dart';
import 'package:period_tracker/features/Main/presentation/widget/profile_top_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            //TODO get from db
            const ProfileTopWidget(
              profilePic: AssetsConstants.splashPic,
              username: "username",
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileButton(
                      icon: Icons.settings_applications_rounded,
                      text: StringConstants.setting,
                      onPressed: () {},
                    ),
                    ProfileButton(
                      icon: Icons.lock_rounded,
                      text: StringConstants.accessCode,
                      onPressed: () {},
                    ),
                    ProfileButton(
                      icon: Icons.notifications,
                      text: StringConstants.reminder,
                      onPressed: () {},
                    ),
                    ProfileButton(
                      icon: Icons.help,
                      text: StringConstants.help,
                      onPressed: () {},
                    ),
                    ProfileButton(
                      icon: Icons.import_contacts,
                      text: StringConstants.about,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
