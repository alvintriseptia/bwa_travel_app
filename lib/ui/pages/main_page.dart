import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/pages/home_page.dart';
import 'package:travel_airplane_app/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget CustomButtonNavigation() {
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
                  CustomButtomNavigationItem(
                      iconURL: 'icon_home.png', active: true),
                  CustomButtomNavigationItem(iconURL: 'icon_booking.png'),
                  CustomButtomNavigationItem(iconURL: 'icon_card.png'),
                  CustomButtomNavigationItem(iconURL: 'icon_settings.png'),
                ],
              )));
    }

    return Scaffold(
        body: Stack(children: [buildContent(), CustomButtonNavigation()]));
  }
}
