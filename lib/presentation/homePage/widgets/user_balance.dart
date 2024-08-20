import 'package:flutter/material.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class UserBalance extends StatelessWidget {
  final int balance;
  final Color color;
  final double fontSize;
  const UserBalance({super.key, required this.balance, required this.color, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.coin, width: fontSize-5),
        SizedBox(width: 2.w),
        AppTextBalance(
          color: color,
          balance: balance,
          fontSize: fontSize,
        )
      ],
    );
  }
}
