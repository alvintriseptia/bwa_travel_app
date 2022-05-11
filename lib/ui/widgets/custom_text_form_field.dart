import 'package:flutter/material.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;

  const CustomTextFormField(
      {Key? key,
      required this.label,
      required this.hint,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
