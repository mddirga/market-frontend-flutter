import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 130,
        height: 180,
        margin: const EdgeInsets.only(
          right: 14,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primaryCardColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 1,
                offset: const Offset(0.5, 0),
              ),
            ]),
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
                'Rp246.000',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
