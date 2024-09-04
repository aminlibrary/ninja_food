import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return //* back button
        Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: orangeLightColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
          onPressed: () {
            //* back
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: orangeDarkColor,
          )),
    );
  }
}
