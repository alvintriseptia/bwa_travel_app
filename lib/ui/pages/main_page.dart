import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget CustomButtonNavigation() {
      Widget Icon(String iconURL, bool active) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/${iconURL}'),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                  color: active ? kPrimaryColor : kTransparentColor,
                  borderRadius: BorderRadius.circular(18)),
            ),
          ],
        );
      }

      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(
                  bottom: 40, left: defaultMargin, right: defaultMargin),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon('icon_home.png', true),
                  Icon('icon_booking.png', false),
                  Icon('icon_card.png', false),
                  Icon('icon_settings.png', false),
                ],
              )));
    }

    return Scaffold(
        body: Stack(children: [Text('MainPage'), CustomButtonNavigation()]));
  }
}
