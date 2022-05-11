import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';
import 'package:travel_airplane_app/ui/widgets/custom_button.dart';
import 'package:travel_airplane_app/ui/widgets/custom_text_form_field.dart';

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

    Widget SubmitButton() {
      return CustomButton(
          title: "Get Started",
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          });
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
              CustomTextFormField(label: "Full Name", hint: "Your full name"),
              CustomTextFormField(
                  label: "Email Address", hint: "Your email address"),
              CustomTextFormField(
                  label: "Password", hint: "Your password", obscureText: true),
              CustomTextFormField(label: "Hobby", hint: "Your hobby"),
              SubmitButton(),
              TermsAndCondition(),
            ],
          ),
        ));
  }
}
