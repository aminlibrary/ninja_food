import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class PriceInfoRow extends StatelessWidget {
  final String title;
  final String value;
  const PriceInfoRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //* title
        txt(
          title,
          color: whiteColor,
        ),

        //* value
        txt(
          "$value\u0024",
          color: whiteColor,
        ),
      ],
    );
  }
}
