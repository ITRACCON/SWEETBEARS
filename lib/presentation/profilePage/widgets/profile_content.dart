import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/cubit/userCubit/user_cubit.dart';
import 'package:sweetbears/presentation/profilePage/widgets/referals_content.dart';
import 'package:sweetbears/presentation/profilePage/widgets/user_info.dart';
import 'package:sweetbears/widgets/sliding_segment.dart';

class ProfileContent extends StatefulWidget {
  final User user;
  final Map userInfo;
  final UserCubit cubit;
  final UserAuthCubit cubitUserAuth;
  const ProfileContent(
      {super.key,
      required this.user,
      required this.userInfo,
      required this.cubit,
      required this.cubitUserAuth});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  int indexContent = 1;

  onChangeContent(int idContent) {
    setState(() {
      indexContent = idContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Bear bear = bears[widget.user.idbear];
    List<Widget> contentPage = [
      ReferalsContent(
        referals: widget.userInfo['referals'],
        color: bear.gradientBg.colors.last,
        user: widget.user,
      )
    ];
    return Column(
      children: [
        UserInfo(user: widget.user),
        SizedBox(
          height: 2.h,
        ),
        SlidingSegment(
          color: bear.gradientBg.colors.last,
          indexContent: indexContent,
          onValueChanged: onChangeContent,
        ),
        contentPage[indexContent - 1]
      ],
    );
  }
}
