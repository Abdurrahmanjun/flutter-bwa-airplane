import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/ui/pages/bonus_page.dart';
import 'package:bwa_airplane/ui/pages/get_started_page.dart';
import 'package:bwa_airplane/ui/pages/main_page.dart';
import 'package:bwa_airplane/ui/pages/sign_in_page.dart';
import 'package:bwa_airplane/ui/pages/sign_up_page.dart';
import 'package:bwa_airplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PageCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignIn(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
