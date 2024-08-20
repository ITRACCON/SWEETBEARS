import 'package:flutter/material.dart';

class Bear {
  int id;
  RadialGradient gradientBg;
  String photo;
  int energyLimit;
  int amountTap;
  int price;

  Bear(
      {required this.gradientBg,
      required this.photo,
      required this.id,
      required this.energyLimit,
      required this.amountTap,
      required this.price});

  factory Bear.fromJson(Map<dynamic, dynamic> json) {
    return Bear(
        gradientBg: json['gradient'],
        photo: json['photo'],
        id: int.parse(json['id']),
        energyLimit: int.parse(json['energyLimit']),
        amountTap: int.parse(json['amountTap']),
        price: int.parse(json['price']));
  }
}
