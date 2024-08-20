import 'dart:async';

import 'package:flutter/material.dart';

class ClickUpdate {
  final int milliseconds;
  VoidCallback? action;
  Timer? timer;

  ClickUpdate({required this.milliseconds});

  void run(VoidCallback action) async {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
