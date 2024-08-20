import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/ratingPage/widgets/user_line.dart';
import 'package:sweetbears/widgets/app_text.dart';

class RatingContent extends StatelessWidget {
  final List<User> users;
  const RatingContent({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          width: 100.w,
          height: 32.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.whiteList), fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextGradient(
                  text: "Рейтинг игроков",
                  textStyle:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  font: 'Inter',
                  colors: <Color>[AppColors.darkGrey, Colors.grey]),
              AppText(
                  text: "(Топ 50)",
                  font: 'Inter',
                  textStyle:
                      TextStyle(color: AppColors.darkGrey, fontSize: 8.sp)),
              AppText(
                  text:
                      'На данный момент данный рейтинг также представляет собой соревнования, перед включением монеты в листинг мы наградим денежными призами победителей этих соревнований.',
                  textStyle:
                      TextStyle(fontSize: 10.sp, color: AppColors.darkGrey)),
            ],
          ),
        ),
        SizedBox(height: 1.h),
        AppText(
            text: 'Список пользователей',
            textAlign: TextAlign.left,
            font: 'Inter',
            textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 1.h),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.w),
            width: 90.w,
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
                      AppText(
                          text: 'Место',
                          font: 'Inter',
                          textStyle: TextStyle(
                              color: AppColors.white, fontSize: 10.sp)),
                      SizedBox(
                        width: 2.w,
                      ),
                      AppText(
                        text: "Игрок",
                        font: 'Inter',
                        textStyle:
                            TextStyle(color: AppColors.white, fontSize: 10.sp),
                      ),
                    ]),
                AppText(
                  text: "Приз",
                  font: 'Inter',
                  textStyle: TextStyle(color: AppColors.white, fontSize: 10.sp),
                ),
              ],
            )),
        Container(
            width: 90.w,
            height: 33.h,
            child: ListView.builder(
                itemCount: users.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                itemBuilder: (context, index) {
                  return UserLine(
                      id: index,
                      color: AppColors.white,
                      username: users[index].username,
                      balance: users[index].balance);
                }))
      ],
    );
  }
}
