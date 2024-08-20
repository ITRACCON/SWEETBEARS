import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class SlidingSegment extends StatelessWidget {
  final int indexContent;
  final void Function(int idContent) onValueChanged;
  final Color color;
  const SlidingSegment(
      {required this.onValueChanged,
      required this.indexContent,
      super.key,
      required this.color});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        width: 80.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                onValueChanged(1);
              },
              child: Container(
                width: 25.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: indexContent == 1 ? color : AppColors.darkGrey),
                padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 1.h),
                child: AppText(
                    text: 'Обменик',
                    textStyle: TextStyle(color: Colors.white, fontSize: 8.sp)),
              ),
            ),
            InkWell(
              onTap: () {
                onValueChanged(2);
              },
              child: Container(
                width: 25.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: indexContent == 2 ? color : AppColors.darkGrey),
                padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 1.h),
                child: AppText(
                    text: 'Выводы',
                    textStyle: TextStyle(color: Colors.white, fontSize: 8.sp)),
              ),
            ),
            InkWell(
              onTap: () {
                onValueChanged(3);
              },
              child: Container(
                width: 25.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: indexContent == 3 ? color : AppColors.darkGrey),
                padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 1.h),
                child: AppText(
                    text: 'Рефералы',
                    textStyle: TextStyle(color: Colors.white, fontSize: 8.sp)),
              ),
            ),
          ],
        ));
  }
}
