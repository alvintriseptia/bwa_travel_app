import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget Title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get your next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget InputSection(
        {required String label,
        required String hint,
        bool obscureText = false}) {
      return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: blackTextStyle),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: obscureText,
                decoration: InputDecoration(
                    hintText: hint,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(defaultRadius))),
              )
            ],
          ));
    }

    Widget SubmitButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 55,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/bonus');
          },
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius)),
          ),
          child: Text("Get Started",
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
        ),
      );
    }

    Widget TermsAndCondition() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
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
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              Title(),
              SizedBox(height: 60),
              InputSection(label: "Full Name", hint: "Your full name"),
              InputSection(label: "Email Address", hint: "Your email address"),
              InputSection(
                  label: "Password", hint: "Your password", obscureText: true),
              InputSection(label: "Hobby", hint: "Your hobby"),
              SubmitButton(),
              TermsAndCondition(),
            ],
          ),
        ));
  }
}
