import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/widgets/app_text.dart';

class ModalWindow extends StatelessWidget {
  final String type;
  final String title;
  final String text;
  final Color color;

  const ModalWindow({
    super.key,
    required this.type,
    required this.title,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
        backgroundColor: AppColors.darkGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: color, width: 2)),
        child: Container(
            constraints: BoxConstraints(maxHeight: 40.h),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: type == "success"
                        ? AppColors.green.withOpacity(0.3)
                        : AppColors.red.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    type == "success"
                        ? Icons.check_rounded
                        : Icons.clear_rounded,
                    color: type == "success" ? AppColors.green : AppColors.red,
                    size: 20.sp,
                  ),
                ),
                AppText(
                    text: title,
                    font: 'Inter',
                    textStyle:
                        TextStyle(color: AppColors.white, fontSize: 14.sp)),
                SizedBox(
                  height: 1.h,
                ),
                AppText(
                    text: text,
                    font: 'Inter',
                    textStyle: TextStyle(color: Colors.grey, fontSize: 10.sp)),
                SizedBox(
                  height: 1.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.bgApp),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: AppText(
                      text: 'Хорошо',
                      font: 'Inter',
                      textStyle:
                          TextStyle(color: AppColors.white, fontSize: 10.sp),
                    ),
                  ),
                )
              ],
            )));
  }
}
