import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';

class PaymentsButton extends StatelessWidget {
  final String imagePath;
  const PaymentsButton({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: whiteColor,
              elevation: 0,
              side: const BorderSide(
                color: greyColor,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          onPressed: () {},
          child: Image.asset(imagePath)),
    );
  }
}
