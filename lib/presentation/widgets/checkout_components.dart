import 'package:flutter/material.dart';
import 'package:nibbles_ecommerce/core/extensions/extensions.dart';
import 'package:nibbles_ecommerce/models/product.dart';
import 'dart:math' as math;

import '../../configs/configs.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/colors.dart';
import 'custom_elevated_button.dart';

Widget productItem(Product product) {
  final random = math.Random();

  return Container(
    width: AppDimensions.normalize(53),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.normalize(4))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppAssets.productsPng[random.nextInt(3)]),
        Text(
          product.name.capitalize(),
          style: AppText.h3b,
        ),
        Text(
          product.price,
          style: AppText.b1,
        ),
        Padding(
          padding: Space.all(),
          child: customElevatedButton(
              onTap: () {},
              text: "Add Product",
              heightFraction: 12,
              width: double.infinity,
              color: AppColors.commonAmber,
              withSmallText: true,
              radiusFraction: 2.5),
        )
      ],
    ),
  );
}
