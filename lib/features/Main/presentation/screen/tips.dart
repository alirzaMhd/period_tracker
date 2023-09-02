import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:period_tracker/constants/constants.dart';
import 'package:period_tracker/features/Main/presentation/widget/widget.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 55.h),
              Container(
                padding: EdgeInsets.only(left:40.w),
                child: Text(
                StringConstants.tips,
                style: TextStylesConstants.headlineSmall(context)!
                    .copyWith(color: Pallete.greyColor),
              ),),
              //TODO get from chatgpt and add dialogbox for showing tips
              ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return TipsForm(
                    title: "$index reason why your period is sudden",
                    subtitle:
                        "Puberty typically starts between ages eight and 13. It’s driven by chemicals in our body called reproductive and blah blah blah blah blah blah blah blah blah blah",
                    imagePath: AssetsConstants.tipsPic,
                    onPressed: ()=>print("object"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
