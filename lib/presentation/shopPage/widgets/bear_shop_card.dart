import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/widgets/app_text.dart';

class BearShopCard extends StatelessWidget {
  final User user;
  final Bear bear;
  final bool purchasedBear;
  final bool usingBear;
  final void Function() buyBear;
  final void Function() changeBear;
  const BearShopCard(
      {super.key,
      required this.bear,
      required this.purchasedBear,
      required this.usingBear,
      required this.buyBear,
      required this.changeBear,
      required this.user});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 39.w,
                width: 39.w,
                decoration: BoxDecoration(
                  gradient: bear.gradientBg,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  bear.photo,
                  height: 37.w,
                ),
              )
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(
                          text: "Лимит энергии: ",
                          font: "Inter",
                          textStyle: TextStyle(
                              fontSize: 10.sp, color: AppColors.white)),
                      AppText(
                          text: bear.energyLimit.toString(),
                          textStyle: TextStyle(
                              fontSize: 10.sp, color: AppColors.purpur))
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(
                          text: "Прибыль за тап: ",
                          font: "Inter",
                          textStyle: TextStyle(
                              fontSize: 10.sp, color: AppColors.white)),
                      AppText(
                          text: bear.amountTap.toString(),
                          textStyle: TextStyle(
                              fontSize: 10.sp, color: AppColors.purpur))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(
                                text: "Цена",
                                font: "Inter",
                                textAlign: TextAlign.left,
                                textStyle: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.white.withOpacity(0.5))),
                            AppText(
                                text: bear.price.toString(),
                                textAlign: TextAlign.left,
                                textStyle: TextStyle(
                                    fontSize: 10.sp, color: AppColors.white)),
                          ]),
                      purchasedBear
                          ? usingBear
                              ? Container()
                              : InkWell(
                                  onTap: () {
                                    changeBear();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 1.5.h, vertical: 1.w),
                                    decoration: BoxDecoration(
                                      color: AppColors.purpur,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: AppText(
                                        text: "Установить",
                                        font: "Inter",
                                        textStyle: TextStyle(
                                            fontSize: 10.sp,
                                            color: AppColors.white
                                                .withOpacity(0.5),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )
                          : InkWell(
                              onTap: () {
                                if (user.balance >= bear.price) {
                                  buyBear();
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1.5.h, vertical: 1.w),
                                decoration: BoxDecoration(
                                  color: user.balance >= bear.price ? AppColors.purpur : AppColors.darkGrey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: AppText(
                                    text: "Купить",
                                    font: "Inter",
                                    textStyle: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
