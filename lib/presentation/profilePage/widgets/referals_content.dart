import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/referal_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/profilePage/widgets/referal_line.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ReferalsContent extends StatelessWidget {
  final List<Referal> referals;
  final Color color;
  final User user;
  const ReferalsContent(
      {super.key,
      required this.referals,
      required this.color,
      required this.user});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        width: 80.w,
        height: 55.h,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(1.h),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: 80.h,
                decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(children: [
                  AppText(
                      text:
                          "За каждого приведенного человека вы будете получать 100 койнов.",
                      font: 'Inter',
                      textStyle:
                          TextStyle(fontSize: 8.sp, color: Colors.white)),
                  SizedBox(
                    height: 5,
                  ),
                  AppText(
                      text: "Invite ссылка",
                      font: 'Inter',
                      textStyle:
                          TextStyle(fontSize: 8.sp, color: Colors.white)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: AppColors.darkGrey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 2, color: AppColors.bgApp.withOpacity(0.7))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                            text: "t.me/botbot?start=${user.idTg}",
                            textStyle: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.white.withOpacity(0.7))),
                        InkWell(
                          onTap: () {
                            Clipboard.setData(ClipboardData(
                                    text:
                                        'https://t.me/botbot?start=${user.idTg}'))
                                .then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Ссылка успешно скопированна")));
                            });
                          },
                          child: Icon(
                            Icons.copy_all_rounded,
                            size: 14.sp,
                            color: AppColors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ])),
            SizedBox(height: 2.5.h),
            referals.length > 0
                ? Column(children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 0.5.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 2.w),
                        decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppText(
                                text: 'Реферал',
                                font: 'Inter',
                                textStyle: TextStyle(
                                    color: AppColors.white, fontSize: 10.sp)),
                            AppText(
                              text: 'Получено',
                              font: 'Inter',
                              textStyle: TextStyle(
                                  color: AppColors.white, fontSize: 10.sp),
                            ),
                          ],
                        )),
                    Container(
                        width: 80.w,
                        height: 45.h,
                        child: ListView.builder(
                            itemCount: referals.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ReferalLine(
                                  username: referals[index].username);
                            })),
                  ])
                : Column(
                    children: [
                      Icon(
                        Icons.groups_2_rounded,
                        size: 125,
                        color: color,
                      ),
                      AppText(
                          text:
                              "Здесь вы найдете список ваших приглашенных пользователей, которые стали вашими рефералами.",
                          textStyle:
                              TextStyle(fontSize: 12.sp, color: Colors.white))
                    ],
                  )
          ],
        ));
  }
}
