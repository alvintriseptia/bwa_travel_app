import 'package:flutter/material.dart';
import 'package:travel_airplane_app/ui/pages/bonus_page.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => BonusPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
