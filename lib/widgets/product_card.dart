import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 168,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/image_shoes.png',
                height: 50,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Hiking',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Sepatu Sneakers Pria Wanita Kasual',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Rp 246.000',
              style: priceTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
