import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/shopCubit/shop_cubit.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/shopPage/widgets/shop_content.dart';

class ShopPage extends StatefulWidget {
  final User user;
  final UserAuthCubit userAuthCubit;
  const ShopPage({super.key, required this.user, required this.userAuthCubit});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late ShopCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = ShopCubit()..initUserBears(widget.user.idTg);
    widget.userAuthCubit.initUserHome(widget.user.idTg);
  }

  @override
  void dispose() {
    super.dispose();
    widget.userAuthCubit.initUserHome(widget.user.idTg);
  }

  void buyBear(Bear bear) {
    cubit.buyBear(widget.user.idTg, bear);
    cubit.initUserBears(widget.user.idTg);
    widget.userAuthCubit.initUserHome(widget.user.idTg);
  }

  void changeBear(Bear bear) {
    cubit.changeBear(widget.user.idTg, bear);
    cubit.initUserBears(widget.user.idTg);
    widget.userAuthCubit.initUserHome(widget.user.idTg);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
        bloc: cubit,
        builder: (context, state) {
          return state.when(
            initial: (userBears) => ShopContent(
                userBears: userBears,
                user: widget.user,
                buyBear: (bear) => buyBear(bear),
                changeBear: (bear) => changeBear(bear)),
            loading: () => Container(),
            error: () => Container(),
          );
        });
  }
}
