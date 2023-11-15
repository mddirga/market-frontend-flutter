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

    Widget productPreview() {
      return Container(
        width: 225,
        height: 60,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/image_shoes.png',
              width: 54,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sepatu Sneakers Pria Kulit Rusa',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    'Rp260.000',
                    style: priceTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: textFormBackgroundColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type message',
                            hintStyle: textFormTextStyle),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/button_send.png',
                  width: 42,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}
