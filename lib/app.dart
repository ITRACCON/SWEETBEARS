import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweetbears/presentation/cubit/userAuthCubit/user_auth_cubit.dart';
import 'package:sweetbears/presentation/page_layout.dart';
import 'package:sweetbears/presentation/splashPage/splash_page.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late UserAuthCubit cubit;
  final WebAppInitData webAppInitData = tg.initDataUnsafe;

  @override
  void initState() {
    super.initState();
    cubit = UserAuthCubit()..intialUser(webAppInitData.user?.id ?? 982475812);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SWEETBEARS",
        home: Scaffold(
            body: BlocBuilder<UserAuthCubit, UserAuthState>(
                bloc: cubit,
                builder: (context, state) {
                  (state);
                  return state.when(
                    initial: (user) => PageLayout(
                      user: user,
                      userCubit: cubit,
                    ),
                    loading: () => SplashPage(),
                    error: () => SplashPage(),
                  );
                })));
  }
}
