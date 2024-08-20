import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/homePage/widgets/bear_card.dart';
import 'package:sweetbears/presentation/homePage/widgets/user_balance.dart';
import 'package:sweetbears/widgets/app_text.dart';

class HomeContent extends StatelessWidget {
  final User user;
  final int balance;
  final int energy;
  final void Function() updateBalAndEnergyUser;

  const HomeContent(
      {super.key,
      required this.user,
      required this.updateBalAndEnergyUser,
      required this.balance,
      required this.energy});

  @override
  Widget build(BuildContext context) {
    final double progress = user.energy / user.energyLimit;
    Bear bear = bears[user.idbear];
    SizeConfig().init(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      UserBalance(
        balance: balance,
        color: bear.gradientBg.colors.last,
        fontSize: 32.sp,
      ),
      SizedBox(
        height: 1.h,
      ),
      BearCard2Home(
        levelBear: user.level,
        coinTap: user.amountTap,
        bear: bears[user.idbear],
        updateBalAndEnergyUser: updateBalAndEnergyUser,
      ),
      SizedBox(
        height: 2.h,
      ),
      Container(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.bolt_rounded,
              opticalSize: 1,
              color: bear.gradientBg.colors.last,
              size: 50.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    text: energy.toString(),
                    textStyle: TextStyle(
                        fontSize: 20.sp, color: bear.gradientBg.colors.last)),
                AppText(
                    text: '/${user.energyLimit}',
                    textStyle:
                        TextStyle(fontSize: 14.sp, color: AppColors.white))
              ],
            )
          ],
        ),
      ),
      /* Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                  text: "${user.energy}/${user.energyLimit}",
                  textStyle:
                      const TextStyle(fontSize: 22, color: AppColors.purpur)),
              const SizedBox(
                width: 5,
              ),
              const AppText(
                  text: "(Energy limit)",
                  textStyle:
                      TextStyle(fontSize: 10, color: AppColors.darkGrey)),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 15,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white, width: 1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              ProgressBar(
                value: progress,
                height: 13,
                width: size.width * 0.74,
                gradient: const LinearGradient(
                  colors: [AppColors.darkPurpur, AppColors.purpur],
                ),
                backgroundColor: Colors.grey.withOpacity(0.4),
              ),
            ],
          )
        ],
      )*/
    ]);
  }
}
