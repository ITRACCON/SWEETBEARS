import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/homePage/widgets/user_balance.dart';
import 'package:sweetbears/widgets/app_text.dart';

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Bear bear = bears[user.idbear];
    return Container(
        width: 80.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: AppColors.darkGrey),
        padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 2.h),
        child: Column(children: [
          AppText(
            text: 'Текущий баланс',
            textStyle: TextStyle(fontSize: 10.sp, color: AppColors.white),
            font: 'Inter',
          ),
          SizedBox(height: 1.h),
          UserBalance(
            balance: user.balance,
            color: bear.gradientBg.colors.last,
            fontSize: 20.sp,
          ),
        ]));
  }
}
