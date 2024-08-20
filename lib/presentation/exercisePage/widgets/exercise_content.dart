import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/exercise_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/exercisePage/widgets/exercise_list.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ExerciseContent extends StatelessWidget {
  final User user;
  final Exercise exercise;
  final void Function(String exercis, int cash) onTap;
  const ExerciseContent(
      {super.key,
      required this.user,
      required this.exercise,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Bear bear = bears[user.idbear];
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          width: 100.w,
          height: 25.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.whiteList), fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextGradient(
                  text: "Заработай больше",
                  textStyle:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  font: 'Inter',
                  colors: <Color>[AppColors.darkGrey, Colors.grey]),
              AppText(
                  text:
                      'За выполнение заданий вы будете получать дополнительные монеты.',
                  textStyle:
                      TextStyle(fontSize: 10.sp, color: AppColors.darkGrey))
            ],
          ),
        ),
        SizedBox(height: 1.h),
        AppText(
            text: 'Список заданий',
            textAlign: TextAlign.left,
            font: 'Inter',
            textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 1.h),
        ExerciseContainer(
            title: "Пригласить 1 друга",
            value: user.refs,
            max: 1,
            cash: 100,
            onTap: () {
              onTap('exerfriend1', 100);
            },
            color: bear.gradientBg.colors.last,
            done: exercise.exerfriend1 == 1 ? true : false),
        ExerciseContainer(
            title: "Пригласить 10 друзей",
            value: user.refs,
            max: 10,
            cash: 1250,
            onTap: () {
              onTap('exerfriend10', 1250);
            },
            color: bear.gradientBg.colors.last,
            done: exercise.exerfriend10 == 1 ? true : false),
        ExerciseContainer(
            title: "Пригласить 25 друзей",
            value: user.refs,
            max: 25,
            cash: 3000,
            onTap: () {
              onTap('exerfriend25', 3000);
            },
            color: bear.gradientBg.colors.last,
            done: exercise.exerfriend25 == 1 ? true : false),
        ExerciseContainer(
            title: "Накопить 10 000 койнов",
            value: user.balance,
            max: 10000,
            cash: 2000,
            onTap: () {
              onTap('exercoin10k', 2000);
            },
            color: bear.gradientBg.colors.last,
            done: exercise.exercoin10k == 1 ? true : false),
      ],
    );
  }
}
