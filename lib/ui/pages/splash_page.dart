import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/icon_plane.png'),
            ),
            SizedBox(height: 50),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
            ),
          ]),
        ));
  }
}
