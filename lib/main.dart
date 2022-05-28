import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_airplane_app/cubit/page_cubit.dart';
import 'package:travel_airplane_app/ui/pages/bonus_page.dart';
import 'package:travel_airplane_app/ui/pages/checkout_page.dart';
import 'package:travel_airplane_app/ui/pages/get_started_page.dart';
import 'package:travel_airplane_app/ui/pages/main_page.dart';
import 'package:travel_airplane_app/ui/pages/sign_up.dart';
import 'package:travel_airplane_app/ui/pages/splash_page.dart';

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
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
