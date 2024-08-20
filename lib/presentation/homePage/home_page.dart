import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sweetbears/misc/clicker.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/clickerCubit/clicker_cubit.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/homePage/widgets/home_content.dart';

class HomePage extends StatefulWidget {
  final User user;
  final UserAuthCubit userCubit;
  const HomePage({super.key, required this.user, required this.userCubit});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bal = 0;
  int energy = 0;

  Timer? timer;
  Timer? timer2;

  late ClickerCubit cubit;

  final sendDelay = ClickUpdate(milliseconds: 1000);

  void updateBalAndEnergyUser() {
    if (energy >= widget.user.amountTap) {
      setState(() {
        bal = bal + widget.user.amountTap;
        energy = energy - widget.user.amountTap;
      });
      sendDelay.run(() {
        cubit.updateBalAndEnergyUser(widget.user.idTg, bal, energy);
        widget.userCubit.initUserHome(widget.user.idTg);
      });
    }
  }

  void addEnergy() {
    print("ADD_ENERGY");
    if (energy < widget.user.energyLimit) {
      setState(() {
        energy = energy + (widget.user.amountTap * 2 * 5).toInt();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    widget.userCubit.initUserHome(widget.user.idTg);
    print(widget.user.balance);
    bal = widget.user.balance;
    print(bal);
    energy = widget.user.energy;
    cubit = ClickerCubit();
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      addEnergy();
    });
    timer2 = Timer.periodic(Duration(seconds: 30), (Timer t) {
      print("UPDATEBALTIMER");
      cubit.updateBalAndEnergyUser(widget.user.idTg, bal, energy);
      widget.userCubit.initUserHome(widget.user.idTg);
    });
  }

  @override
  void dispose() {
    super.dispose();
    cubit.updateBalAndEnergyUser(widget.user.idTg, bal, energy);
    widget.userCubit.initUserHome(widget.user.idTg);
    timer?.cancel();
    timer = null;
    timer2?.cancel();
    timer2 = null;
  }

  @override
  Widget build(BuildContext context) {
    return HomeContent(
        user: widget.user,
        balance: bal,
        energy: energy,
        updateBalAndEnergyUser: updateBalAndEnergyUser);
  }
}
