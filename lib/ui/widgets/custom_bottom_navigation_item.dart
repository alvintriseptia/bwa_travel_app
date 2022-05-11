import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class CustomButtomNavigationItem extends StatelessWidget {
  final String iconURL;
  final bool active;

  const CustomButtomNavigationItem(
      {Key? key, required this.iconURL, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
