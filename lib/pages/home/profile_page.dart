import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor4,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: defaultMargin,
              top: 18,
              bottom: 18,
              right: defaultMargin,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Guest1234',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@guest123',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/button_exit.png',
                  width: 25,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
