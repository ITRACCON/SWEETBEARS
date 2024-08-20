import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/cubit/userCubit/user_cubit.dart';
import 'package:sweetbears/presentation/profilePage/widgets/profile_content.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  final UserAuthCubit cubitUserAuth;
  const ProfilePage(
      {super.key, required this.user, required this.cubitUserAuth});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late UserCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = UserCubit()..intialUserInfo(widget.user.idTg);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
        bloc: cubit,
        builder: (context, state) {
          return state.when(
              initial: (userInfo) => ProfileContent(
                  user: widget.user, userInfo: userInfo, cubit: cubit, cubitUserAuth: widget.cubitUserAuth),
              loading: () => Container(),
              error: () => Container());
        });
  }
}
