import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';

class BellWidget extends StatelessWidget {
  const BellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: greyColor),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              color: greenLightColor,
              size: 30,
            )),
      ),
    );
  }
}
