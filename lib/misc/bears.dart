import 'package:sweetbears/misc/gradients.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/domain/models/bear_model.dart';

List<Bear> bears = [
  Bear(
      gradientBg: AppGradient.whiteToRed,
      photo: AppImages.bear1,
      id: 1,
      energyLimit: 1000,
      amountTap: 1,
      price: 0),
  Bear(
      gradientBg: AppGradient.whiteToLightPink,
      photo: AppImages.bear2,
      id: 2,
      energyLimit: 2000,
      amountTap: 3,
      price: 2500),
  Bear(
      gradientBg: AppGradient.lightBlueToLightPurpleBlue,
      photo: AppImages.bear3,
      id: 3,
      energyLimit: 3500,
      amountTap: 5,
      price: 7500),
  Bear(
      gradientBg: AppGradient.whiteToBlueMagneta,
      photo: AppImages.bear4,
      id: 4,
      energyLimit: 4250,
      amountTap: 7,
      price: 11200),
  Bear(
      gradientBg: AppGradient.whiteToRed,
      photo: AppImages.bear5,
      id: 5,
      energyLimit: 5000,
      amountTap: 9,
      price: 15300),
  Bear(
      gradientBg: AppGradient.whiteToYellowGoldBeryl,
      photo: AppImages.bear6,
      id: 6,
      energyLimit: 5500,
      amountTap: 11,
      price: 19800),
  Bear(
      gradientBg: AppGradient.papayaPunchToMediumDarkRed,
      photo: AppImages.bear7,
      id: 7,
      energyLimit: 6250,
      amountTap: 13,
      price: 24700),
  Bear(
      gradientBg: AppGradient.whiteToRed,
      photo: AppImages.bear8,
      id: 8,
      energyLimit: 7000,
      amountTap: 15,
      price: 30000),
  Bear(
      gradientBg: AppGradient.whiteToBlueBlue,
      photo: AppImages.bear9,
      id: 9,
      energyLimit: 7500,
      amountTap: 17,
      price: 35700),
  Bear(
      gradientBg: AppGradient.whiteToRed,
      photo: AppImages.bear10,
      id: 10,
      energyLimit: 8250,
      amountTap: 19,
      price: 41800),
  Bear(
      gradientBg: AppGradient.whiteToBlueBlue,
      photo: AppImages.bear11,
      id: 11,
      energyLimit: 8750,
      amountTap: 21,
      price: 48300),
  Bear(
      gradientBg: AppGradient.orangeBrownToMediumDarkRed,
      photo: AppImages.bear12,
      id: 12,
      energyLimit: 9250,
      amountTap: 23,
      price: 55200),
  Bear(
      gradientBg: AppGradient.whiteToYellowGoldBeryl,
      photo: AppImages.bear13,
      id: 13,
      energyLimit: 9500,
      amountTap: 25,
      price: 62500),
  Bear(
      gradientBg: AppGradient.whiteToYellowGoldBeryl,
      photo: AppImages.bear14,
      id: 14,
      energyLimit: 10000,
      amountTap: 27,
      price: 70200),
  Bear(
      gradientBg: AppGradient.darkGreenBlueToMediumDarkRed,
      photo: AppImages.bear15,
      id: 15,
      energyLimit: 10500,
      amountTap: 29,
      price: 78300),
  Bear(
      gradientBg: AppGradient.whiteToBlueBlue,
      photo: AppImages.bear16,
      id: 16,
      energyLimit: 11250,
      amountTap: 31,
      price: 86800),
  Bear(
      gradientBg: AppGradient.whiteToYellowGoldBeryl,
      photo: AppImages.bear17,
      id: 17,
      energyLimit: 11750,
      amountTap: 33,
      price: 95700),
  Bear(
      gradientBg: AppGradient.whiteToRed,
      photo: AppImages.bear18,
      id: 18,
      energyLimit: 12500,
      amountTap: 35,
      price: 105000),
  Bear(
      gradientBg: AppGradient.whiteToBlueBlue,
      photo: AppImages.bear19,
      id: 19,
      energyLimit: 13250,
      amountTap: 37,
      price: 114700),
  Bear(
      gradientBg: AppGradient.whiteToBlueMagneta,
      photo: AppImages.bear20,
      id: 20,
      energyLimit: 14000,
      amountTap: 39,
      price: 124800),
  Bear(
      gradientBg: AppGradient.whiteToMediumLightBlue,
      photo: AppImages.bear21,
      id: 21,
      energyLimit: 15000,
      amountTap: 41,
      price: 135300),
  Bear(
      gradientBg: AppGradient.mediumLightBrownToDarkOrange,
      photo: AppImages.bear22,
      id: 22,
      energyLimit: 15750,
      amountTap: 43,
      price: 146200),
  Bear(
      gradientBg: AppGradient.mediumDarkBlueBlueToDarkBlueBlue,
      photo: AppImages.bear23,
      id: 23,
      energyLimit: 16500,
      amountTap: 45,
      price: 157500),
  Bear(
      gradientBg: AppGradient.whiteToMediumDarkGreen,
      photo: AppImages.bear24,
      id: 24,
      energyLimit: 17250,
      amountTap: 47,
      price: 169200),
  Bear(
      gradientBg: AppGradient.whiteToMediumLightBlue,
      photo: AppImages.bear25,
      id: 25,
      energyLimit: 18000,
      amountTap: 49,
      price: 181300),
  Bear(
      gradientBg: AppGradient.whiteToBlueMagneta,
      photo: AppImages.bear26,
      id: 26,
      energyLimit: 18500,
      amountTap: 51,
      price: 193800),
  Bear(
      gradientBg: AppGradient.lightBrownToMediumLightBlueBlue,
      photo: AppImages.bear27,
      id: 27,
      energyLimit: 19000,
      amountTap: 53,
      price: 206700),
  Bear(
      gradientBg: AppGradient.mediumLightBlueBlueToOrangeBrown,
      photo: AppImages.bear28,
      id: 28,
      energyLimit: 19500,
      amountTap: 55,
      price: 220000),
  Bear(
      gradientBg: AppGradient.whiteToPurpurPink,
      photo: AppImages.bear29,
      id: 29,
      energyLimit: 20250,
      amountTap: 57,
      price: 233700),
  Bear(
      gradientBg: AppGradient.mediumLightRedOrangeToDarkRed,
      photo: AppImages.bear30,
      id: 30,
      energyLimit: 21000,
      amountTap: 59,
      price: 247800),
  Bear(
      gradientBg: AppGradient.whiteToMediumDarkGrey,
      photo: AppImages.bear31,
      id: 31,
      energyLimit: 22000,
      amountTap: 65,
      price: 279500)
];
