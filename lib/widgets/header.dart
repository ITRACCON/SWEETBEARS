import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextGradient(
              text: "SWEET",
              textStyle: TextStyle(fontSize: 16.sp),
              colors: <Color>[
                AppColors.purpur,
                ColorWithHSL(AppColors.purpur).withLightness(0)
              ]),
          SizedBox(width: 1.w),
          Image.asset(
            AppImages.logo,
            width: 10.w,
          ),
          SizedBox(width: 1.w),
          AppTextGradient(
              text: "BEARS",
              textStyle: TextStyle(fontSize: 16.sp),
              colors: <Color>[
                AppColors.purpur,
                ColorWithHSL(AppColors.purpur).withLightness(0)
              ]),
        ],
      ),
    );
  }
}
