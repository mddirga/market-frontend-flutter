import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor4,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/image_shop_logo_online.png',
              width: 30,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Online',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ],
        ),
        elevation: 0,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: header(),
    );
  }
}
