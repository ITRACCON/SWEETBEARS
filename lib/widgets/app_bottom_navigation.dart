import 'package:flutter/material.dart';
import 'package:sweetbears/misc/colors.dart';
import 'package:sweetbears/widgets/app_text.dart';

class AppBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final void Function(int index) onTap;
  final Color color;
  const AppBottomNavigation(
      {super.key,
      required this.currentIndex,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          color: AppColors.bgApp,
          border: Border(top: BorderSide(color: color, width: 3)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuButton(
              title: 'Магазин',
              icon: Icons.shopping_bag_rounded,
              onTap: () {
                onTap(1);
              },
              color: currentIndex == 1 ? color : Colors.white),
          MenuButton(
              title: 'Задания',
              icon: Icons.paid_rounded,
              onTap: () {
                onTap(2);
              },
              color: currentIndex == 2 ? color : Colors.white),
          const SizedBox(
            width: 50,
          ),
          MenuButton(
              title: 'Рейтинг',
              icon: Icons.emoji_events_rounded,
              onTap: () {
                onTap(3);
              },
              color: currentIndex == 3 ? color : Colors.white),
          MenuButton(
              title: 'Профиль',
              icon: Icons.person_rounded,
              onTap: () {
                onTap(4);
              },
              color: currentIndex == 4 ? color : Colors.white)
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final void Function() onTap;

  const MenuButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(height: 5),
          AppText(text: title, textStyle: TextStyle(fontSize: 12, color: color))
        ],
      ),
    );
  }
}
