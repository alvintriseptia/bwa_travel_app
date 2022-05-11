import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              offset: Offset(0, 10),
              blurRadius: 50,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",
                          style: whiteTextStyle.copyWith(fontWeight: light)),
                      Text(
                        "Kezia Anne",
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_plane.png'),
                      ),
                    )),
                Text(
                  "Pay",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            Spacer(),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(fontWeight: light),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 26),
            )
          ],
        ),
      );
    }

    Widget Title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget SubTitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that you can buy a flight ticket',
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget StartButton() {
      return CustomButton(
          title: "Start Fly Now",
          width: 220,
          margin: EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.of(context).pushNamed('/main');
          });
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [BonusCard(), Title(), SubTitle(), StartButton()]),
        ));
  }
}
