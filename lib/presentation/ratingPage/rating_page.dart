import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweetbears/presentation/cubit/ratingCubit/rating_cubit.dart';
import 'package:sweetbears/presentation/ratingPage/widgets/rating_content.dart';
import 'package:sweetbears/widgets/app_text.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  late RatingCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = RatingCubit()..initUsers();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingCubit, RatingState>(
        bloc: cubit,
        builder: (context, state) {
          return state.when(
            initial: (users) => RatingContent(users: users),
            loading: () => Container(
              child: const AppText(
                text: "LOAD",
                textStyle: TextStyle(fontSize: 36, color: Colors.black),
              ),
            ),
            error: () => Container(
              child: const AppText(
                text: "ERROR",
                textStyle: TextStyle(fontSize: 36, color: Colors.black),
              ),
            ),
          );
        });
  }
}
