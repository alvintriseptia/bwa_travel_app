import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/pages/success_checkout_page.dart';
import 'package:travel_airplane_app/ui/widgets/booking_details_item.dart';
import 'package:travel_airplane_app/ui/widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 291,
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              )
            ],
          )
        ]),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //NOTE: Destination Tile
          Row(children: [
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_destination1.png')),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(height: 5),
                  Text('Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light)),
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
                  style: blackTextStyle.copyWith(fontWeight: medium),
                )
              ],
            )
          ]),

          //NOTE: Booking Details
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
          ),

          //NOTE: Booking Details Item
          BookingDetailsItem(
              title: 'Traveler',
              valueText: '2 Person',
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Seat', valueText: 'A3, B3', valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Insurance', valueText: 'YES', valueColor: kGreenColor),
          BookingDetailsItem(
              title: 'Refundable', valueText: 'NO', valueColor: kRedColor),
          BookingDetailsItem(
              title: 'VAT', valueText: '45%', valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Price',
              valueText: 'IDR 8.500.690',
              valueColor: kBlackColor),
          BookingDetailsItem(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: kPrimaryColor),
        ]),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image_card.png')),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/icon_plane.png')))),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ]),
              ),
            ],
          )
        ]),
      );
    }

    Widget payNowButton() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessCheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget termsAndCondition() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
                route(),
                bookingDetails(),
                paymentDetails(),
                payNowButton(),
                termsAndCondition(),
              ],
            ),
          ),
        ));
  }
}
