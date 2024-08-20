import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweetbears/domain/models/user_model.dart';
import 'package:sweetbears/presentation/cubit/exerciseCubit/exercise_cubit.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/exercisePage/widgets/exercise_content.dart';

class ExercisePage extends StatefulWidget {
  final User user;
  final UserAuthCubit userCubit;
  const ExercisePage({super.key, required this.user, required this.userCubit});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late ExerciseCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = ExerciseCubit()..initExercise(widget.user.idTg);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void updateExercise(String exercis, int cash) {
    cubit.updateExercise(widget.user.idTg, exercis, cash);
    widget.userCubit.initUserHome(widget.user.idTg);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseCubit, ExerciseState>(
        bloc: cubit,
        builder: (context, state) {
          return state.when(
            initial: (exercise) => ExerciseContent(
                user: widget.user,
                exercise: exercise,
                onTap: (exercis, cash) => updateExercise(exercis, cash)),
            loading: () => Container(),
            error: () => Container(),
          );
        });
  }
}
