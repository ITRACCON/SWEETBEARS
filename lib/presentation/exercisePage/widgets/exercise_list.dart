import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ExerciseContainer extends StatelessWidget {
  final String title;
  final int value;
  final int max;
  final int cash;
  final void Function() onTap;
  final bool done;
  final Color color;
  const ExerciseContainer(
      {super.key,
      required this.title,
      required this.value,
      required this.max,
      required this.cash,
      required this.onTap,
      required this.done,
      required this.color});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
        margin: EdgeInsets.symmetric(vertical: 0.5.h),
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        width: 90.w,
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    text: title,
                    textAlign: TextAlign.left,
                    textStyle:
                        TextStyle(fontSize: 10.sp, color: AppColors.white)),
                Row(
                  children: [
                    AppText(
                        text: 'Выполнено: ',
                        textAlign: TextAlign.left,
                        textStyle:
                            TextStyle(fontSize: 8.sp, color: AppColors.white)),
                    AppText(
                        text: '${value}/${max}',
                        textAlign: TextAlign.left,
                        textStyle: TextStyle(fontSize: 8.sp, color: color)),
                    const SizedBox(width: 5),
                    AppText(
                        text: '|',
                        textAlign: TextAlign.left,
                        textStyle:
                            TextStyle(fontSize: 8.sp, color: AppColors.white)),
                    const SizedBox(width: 5),
                    AppText(
                        text: 'Выплата: ',
                        textAlign: TextAlign.left,
                        textStyle:
                            TextStyle(fontSize: 8.sp, color: AppColors.white)),
                    AppText(
                        text: '+ ${cash}',
                        textAlign: TextAlign.left,
                        textStyle: TextStyle(fontSize: 8.sp, color: color)),
                  ],
                )
              ],
            ),
            done
                ? AppText(
                    text: 'Выполнено',
                    textStyle:
                        TextStyle(fontSize: 10.sp, color: AppColors.white))
                : value >= max
                    ? InkWell(
                        onTap: () {
                          onTap();
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 2),
                            decoration: BoxDecoration(
                                color: AppColors.bgApp,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 2, color: color)),
                            child: AppText(
                                text: "Забрать",
                                textStyle: TextStyle(
                                    fontSize: 10.sp, color: AppColors.white))))
                    : Container()
          ],
        ));
  }
}
