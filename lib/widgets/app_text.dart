import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweetbears/misc/colors.dart';

/*class AppTextGradient extends StatelessWidget {
  final String text;
  final double fontSize;
  final double heightGradient;
  const AppTextGradient(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.heightGradient});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.anton(
          textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: <Color>[AppColors.purpur, AppColors.darkPurpur],
                  stops: [0.0, 1.0],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                ).createShader(
                    Rect.fromLTWH(0.0, 0.0, 200.0, heightGradient)))),
    );
  }
}*/

class AppText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final String font;
  const AppText(
      {required this.text,
      required this.textStyle,
      this.textAlign = TextAlign.center,
      super.key,
      this.font = 'Anton'});

  @override
  Widget build(BuildContext context) {
    return Text(text.toString(),
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
        style: GoogleFonts.getFont(font, textStyle: textStyle));
  }
}

class AppTextBalance extends StatelessWidget {
  final int balance;
  final double fontSize;
  final Color color;
  const AppTextBalance(
      {required this.balance,
      super.key,
      required this.fontSize,
      required this.color});

  generateZeroString() {
    String zeroString = '';
    for (int i = 0; i < 10 - balance.toString().length; i++) {
      zeroString = zeroString + '0';
    }
    return zeroString;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
            text: generateZeroString(),
            textStyle: TextStyle(
                fontSize: fontSize, color: AppColors.white.withOpacity(0.1))),
        AppTextGradient(
            text: balance.toString(),
            textStyle: TextStyle(fontSize: fontSize),
            colors: <Color>[color, ColorWithHSL(color).withLightness(0.05)])
      ],
    );
  }
}

class AppTextGradient extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final List<Color> colors;

  final String font;
  const AppTextGradient(
      {super.key,
      required this.text,
      required this.textStyle,
      required this.colors,
      this.font = 'Anton'});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(
        colors: colors,
        stops: [0.0, 1.0],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      ).createShader(bounds),
      child: AppText(text: text, textStyle: textStyle, font: font),
    );
  }
}
