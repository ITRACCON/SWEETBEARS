import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class UserLine extends StatelessWidget {
  final int id;
  final String username;
  final int balance;
  final Color color;
  const UserLine(
      {super.key,
      required this.id,
      required this.username,
      required this.balance,
      required this.color});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.transparent;
    String priz = "100\$";
    switch (id + 1) {
      case 1:
        color = const Color(0xFFFFD700);
        priz = '300\$';
        break;
      case 2:
        color = const Color(0xFFc0c0c0);
        priz = '200\$';
        break;
      case 3:
        color = const Color(0xFFCD7F32);
        priz = '100\$';
        break;
      default:
        priz = '';
        break;
    }
    SizeConfig().init(context);
    return Container(
        margin: EdgeInsets.symmetric(vertical: 0.5.h),
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.w),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: color),
                      child: AppText(
                          text: (id + 1).toString(),
                          textStyle: const TextStyle(
                              fontSize: 12, color: AppColors.white))),
                  SizedBox(
                    width: 7.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                          text: username,
                          textAlign: TextAlign.left,
                          textStyle: const TextStyle(
                              color: AppColors.white, fontSize: 14)),
                      AppText(
                          text: balance.toString(),
                          textAlign: TextAlign.left,
                          textStyle: TextStyle(color: AppColors.white, fontSize: 12))
                    ],
                  ),
                ]),
            AppText(
              text: priz,
              textStyle: const TextStyle(color: AppColors.green, fontSize: 14),
            ),
          ],
        ));
  }
}
