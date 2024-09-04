import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class BnbActiveItem extends StatelessWidget {
  final String? itemName;
  final IconData? itemIcon;
  final Function()? onTap;
  const BnbActiveItem(
      {this.itemName, this.itemIcon, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 125,
        height: 50,
        decoration: BoxDecoration(
            color: greenWhiteLightColor,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //* icon
            Icon(
              itemIcon,
              color: greenLightColor,
            ),

            //* item name
            txt(itemName ?? "item")
          ],
        ),
      ),
    );
  }
}
