import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/widgets/custom_button.dart';
import 'package:travel_airplane_app/ui/widgets/interest_item.dart';
import 'package:travel_airplane_app/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            // NOTE: EMBLEM
            Container(
              width: 100,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),

            // NOTE: TITLE
            Container(
                margin: EdgeInsets.only(top: 256),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lake Ciliwung',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                  overflow: TextOverflow.ellipsis)),
                          Text('Tangerang',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: light)),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'))),
                        ),
                        SizedBox(width: 2),
                        Text(
                          '4.8',
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        )
                      ],
                    )
                  ],
                )),

            // NOTE: DESCRIPTION
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // NOTE : ABOUT
                      Text('About',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)),
                      SizedBox(height: 6),
                      Text(
                        'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                        style: blackTextStyle.copyWith(height: 2),
                      ),

                      // NOTE : PHOTOS
                      SizedBox(height: 20),
                      Text('Photos',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)),
                      SizedBox(height: 6),
                      Row(children: [
                        PhotoItem(imageUrl: 'image_photo1.png'),
                        PhotoItem(imageUrl: 'image_photo2.png'),
                        PhotoItem(imageUrl: 'image_photo3.png'),
                      ]),
                      // NOTE: INTERESTS
                      SizedBox(height: 20),
                      Text('Interests',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)),
                      SizedBox(height: 6),
                      Row(children: [
                        InterestItem(text: 'Kids Park'),
                        InterestItem(text: 'Honor Bridge'),
                      ]),
                      SizedBox(height: 10),
                      Row(children: [
                        InterestItem(text: 'City Museum'),
                        InterestItem(text: 'Central Mall'),
                      ]),
                    ])),
            // NOTE : PRICE & BOOK BUTTON
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Row(children: [
                //NOTE: PRICE
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 2.500.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),

                // NOTE: BOOK BUTTON
                CustomButton(title: 'Book Now', onPressed: () {}, width: 170)
              ]),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [backgroundImage(), customShadow(), content()],
          ),
        ));
  }
}
