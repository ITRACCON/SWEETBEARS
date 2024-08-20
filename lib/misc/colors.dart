import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color bgApp = Colors.black;
  static const Color purpur = Color(0xFFFF00E5);
  static const Color darkPurpur = Color(0xFF1C0019);
  static const Color darkGrey = Color(0xFF2C2C2C);
  static const Color white = Colors.white;
  static const Color green = Colors.green;
  static const Color lightPink = Color(0xFFFFA9D7);
  static const Color lightPurpleBlue = Color(0xFF9D41FA);
  static const Color lightBlue = Color(0xFF57CDFF);
  static const Color blueMagneta = Color(0xFF9900F8);
  static const Color red = Color(0xFFF62015);
  static const Color yellowGoldBeryl = Color(0xFFD9A400);
}

extension ColorWithHSL on Color {
  HSLColor get hsl => HSLColor.fromColor(this);

  Color withSaturation(double saturation) {
    return hsl.withSaturation(clampDouble(saturation, 0.0, 1.0)).toColor();
  }

  Color withLightness(double lightness) {
    return hsl.withLightness(clampDouble(lightness, 0.0, 1.0)).toColor();
  }

  Color withHue(double hue) {
    return hsl.withHue(clampDouble(hue, 0.0, 360.0)).toColor();
  }
}
