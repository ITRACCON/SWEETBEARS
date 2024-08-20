import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ReferalLine extends StatelessWidget {
  final String username;
  const ReferalLine({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        margin: EdgeInsets.symmetric(vertical: 0.5.h),
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.w),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
                text: username,
                textAlign: TextAlign.left,
                textStyle: TextStyle(color: Colors.white, fontSize: 8.sp)),
            AppText(
              text: '+100',
              textStyle: TextStyle(color: Colors.green, fontSize: 8.sp),
            ),
          ],
        ));
  }
}
