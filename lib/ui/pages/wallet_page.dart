import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_airplane_app/cubit/auth_cubit.dart';
import 'package:travel_airplane_app/shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Center(
            child: Container(
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
                                style:
                                    whiteTextStyle.copyWith(fontWeight: light)),
                            Text(
                              state.user.name,
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
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
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
                    style: whiteTextStyle.copyWith(
                        fontWeight: medium, fontSize: 26),
                  )
                ],
              ),
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
    ;
  }
}
