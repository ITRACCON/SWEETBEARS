import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/widgets/app_text.dart';

class BearCardHome extends StatelessWidget {
  final int levelBear;
  final int coinTap;
  final Bear bear;
  const BearCardHome(
      {super.key,
      required this.levelBear,
      required this.coinTap,
      required this.bear});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
        height: size.height * 0.57,
        width: size.width * 0.6,
        child: Stack(alignment: Alignment.center, children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              height: size.height * 0.54,
              width: size.width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.bgApp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.41,
                    width: size.width * 0.55,
                    decoration: BoxDecoration(
                      gradient: bear.gradientBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: size.height * 0.08,
                    width: size.width * 0.55,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                                text: levelBear.toString(),
                                textStyle: const TextStyle(
                                    fontSize: 18, color: AppColors.purpur)),
                            const AppText(
                                text: 'Уровень',
                                textStyle: TextStyle(
                                    fontSize: 10, color: AppColors.white)),
                          ],
                        ),
                        Container(
                          width: 2,
                          height: size.height * 0.07,
                          color: AppColors.white,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                                text: coinTap.toString(),
                                textStyle: const TextStyle(
                                    fontSize: 18, color: AppColors.purpur)),
                            const AppText(
                                text: 'Прибыль за тап',
                                textStyle: TextStyle(
                                    fontSize: 10, color: AppColors.white)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: size.height * 0.127,
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  bear.photo,
                  height: size.height * 0.454,
                ),
              ))
        ]));
  }
}

class BearCard2Home extends StatelessWidget {
  final int levelBear;
  final int coinTap;
  final Bear bear;
  final void Function() updateBalAndEnergyUser;
  const BearCard2Home(
      {super.key,
      required this.levelBear,
      required this.coinTap,
      required this.bear,
      required this.updateBalAndEnergyUser});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        updateBalAndEnergyUser();
      },
      child: Container(
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 80.w,
              width: 80.w,
              decoration: BoxDecoration(
                gradient: bear.gradientBg,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                alignment: Alignment.bottomCenter,
                bear.photo,
                height: 57.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
