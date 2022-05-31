import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_airplane_app/cubit/page_cubit.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/pages/home_page.dart';
import 'package:travel_airplane_app/ui/pages/settings_page.dart';
import 'package:travel_airplane_app/ui/pages/transaction_page.dart';
import 'package:travel_airplane_app/ui/pages/wallet_page.dart';
import 'package:travel_airplane_app/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingsPage();
        default:
          return HomePage();
      }
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
                      index: 0, iconURL: 'assets/icon_home.png'),
                  CustomButtomNavigationItem(
                      index: 1, iconURL: 'assets/icon_booking.png'),
                  CustomButtomNavigationItem(
                      index: 2, iconURL: 'assets/icon_card.png'),
                  CustomButtomNavigationItem(
                      index: 3, iconURL: 'assets/icon_settings.png'),
                ],
              )));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
            body: Stack(children: [
          buildContent(currentIndex),
          CustomButtonNavigation()
        ]));
      },
    );
  }
}
