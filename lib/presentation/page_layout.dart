import 'package:flutter/material.dart';
import 'package:sweetbears/misc/bears.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/misc/images.dart';
import 'package:sweetbears/misc/size_config.dart';
import 'package:sweetbears/domain/models/bear_model.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/exercisePage/exercise_page.dart';
import 'package:sweetbears/presentation/homePage/home_page.dart';
import 'package:sweetbears/presentation/profilePage/profile_page.dart';
import 'package:sweetbears/presentation/ratingPage/rating_page.dart';
import 'package:sweetbears/presentation/shopPage/shop_page.dart';
import 'package:sweetbears/widgets/app_bottom_navigation.dart';
import 'package:sweetbears/widgets/bg_grid.dart';
import 'package:sweetbears/widgets/header.dart';

class PageLayout extends StatefulWidget {
  final User user;
  final UserAuthCubit userCubit;
  const PageLayout({super.key, required this.user, required this.userCubit});

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  int indexPage = 0;

  void selectPage(int index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Bear bear = bears[widget.user.idbear];
    List<Widget> pages = [
      HomePage(
        user: widget.user,
        userCubit: widget.userCubit,
      ),
      ShopPage(
        user: widget.user,
        userAuthCubit: widget.userCubit,
      ),
      ExercisePage(
        user: widget.user,
        userCubit: widget.userCubit,
      ),
      RatingPage(),
      ProfilePage(
        user: widget.user,
        cubitUserAuth: widget.userCubit,
      ),
    ];

    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.bgApp,
      body: Container(
          color: AppColors.bgApp,
          child: Stack(
            alignment: Alignment.center,
            children: [
              BgGrid(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Header(),
                  Container(
                    height: 78.h,
                    width: 100.w,
                    child: pages[indexPage],
                  )
                ],
              ),
            ],
          )),
      floatingActionButton: InkWell(
          onTap: () {
            selectPage(0);
          },
          child: Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: AppColors.bgApp,
                      border: Border(
                          bottom: BorderSide(
                              color: bear.gradientBg.colors.last, width: 4)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: Container(),
                  ),
                  Positioned(
                    top: 10,
                    child: Image.asset(
                      alignment: Alignment.topCenter,
                      AppImages.bearPaw,
                      scale: 0.7,
                      width: 35,
                      height: 35,
                      color: bear.gradientBg.colors.last,
                    ),
                  )
                ],
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigation(
          currentIndex: indexPage,
          onTap: selectPage,
          color: bear.gradientBg.colors.last),
    );
  }
}
