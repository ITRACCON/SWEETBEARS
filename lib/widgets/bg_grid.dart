import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/widgets/app_text.dart';

class BgGrid extends StatelessWidget {
  const BgGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: size.width * 0.15),
          height: size.height,
          width: 3,
          color: AppColors.darkGrey.withOpacity(0.3),
        ),
        Container(
          margin: EdgeInsets.only(left: size.width * 0.55),
          height: size.height,
          width: 3,
          color: AppColors.darkGrey.withOpacity(0.3),
        ),
        Container(
          margin: EdgeInsets.only(top: size.height * 0.55),
          height: 3,
          width: size.width,
          color: AppColors.darkGrey.withOpacity(0.3),
        ),
        Container(
          margin: EdgeInsets.only(top: size.height * 0.25),
          height: 3,
          width: size.width,
          color: AppColors.darkGrey.withOpacity(0.3),
        ),
        Container(
          margin: EdgeInsets.only(top: size.height * 0.85),
          height: 3,
          width: size.width,
          color: AppColors.darkGrey.withOpacity(0.3),
        ),
        Container(
            margin: EdgeInsets.only(left: size.width * 0.6, bottom: size.height * 0.26),
            width: size.width * 0.6,
            alignment: Alignment.centerRight,
            child: AppText(
                textAlign: TextAlign.left,
                text:
                    '''The primary goal was to create an engaging and immersive online experience for Binance's NFT Sweat Bear collection.
The challenge was to captivate the audience with interactive elements while educating them about the uniqueness and value of each teddy bear,''',
                textStyle: TextStyle(
                    color: AppColors.white.withOpacity(0.1), fontSize: 9)))
      ],
    );
  }
}
