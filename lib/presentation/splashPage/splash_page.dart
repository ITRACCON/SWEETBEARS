import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 2.2, vertical: 1.h),
        color: AppColors.bgApp,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AppImages.logo,
                width: 10.w,
              ),
            ),
            Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 7.h),
                child: AppTextGradient(
                    text: "SWEET BEARS",
                    textStyle: TextStyle(
                      fontSize: 52.sp,
                    ),
                    colors: <Color>[
                      AppColors.purpur,
                      ColorWithHSL(AppColors.purpur).withLightness(0)
                    ])),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 7.h),
              child: Image.asset(
                AppImages.bear,
                width: 50.h,
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 7.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppImages.lenta,
                      width: 90.w,
                    ),
                    const CircularProgressIndicator(
                      color: Colors.black,
                      value: null,
                      strokeWidth: 5.0,
                    )
                  ],
                )),
          ],
        ));
  }
}
