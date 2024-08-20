import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/shopPage/widgets/bear_shop_card.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ShopContent extends StatelessWidget {
  final User user;
  final List<Bear> userBears;
  final void Function(Bear bear) buyBear;
  final void Function(Bear bear) changeBear;
  const ShopContent(
      {super.key,
      required this.userBears,
      required this.user,
      required this.buyBear,
      required this.changeBear});

  checkBears(int idBearShop) {
    return userBears.indexOf(bears[idBearShop]) != -1;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextGradient(
            text: "MARKET",
            textStyle: TextStyle(fontSize: 24.sp),
            colors: [AppColors.white, AppColors.darkGrey]),
        SizedBox(
          height: 1.5.h,
        ),
        Container(
            width: 90.w,
            height: 70.h,
            child: GridView.builder(
              itemCount: bears.length,
              itemBuilder: (context, index) => BearShopCard(
                  user: user,
                  bear: bears[index],
                  purchasedBear: checkBears(index),
                  usingBear: bears[index].id == user.idbear + 1,
                  buyBear: () {
                    buyBear(bears[index]);
                  },
                  changeBear: () {
                    changeBear(bears[index]);
                  }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 80.w / (100.h / 1.4),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
            ))
      ],
    );
  }
}
