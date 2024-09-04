import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class SignOptionButton extends StatelessWidget {
  final String? title;
  final Widget? icon;
  final Color? bgColor;
  final double? width;
  final double? height;
  final Function()? onTap;
  const SignOptionButton(
      {this.title,
      this.icon,
      this.bgColor,
      this.width,
      this.height,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 165,
      height: height ?? 60,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: bgColor ?? whiteColor,
              elevation: 0,
              side: const BorderSide(color: greyColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //* icon
              icon ?? const SizedBox(),

              //* text
              txt(
                title ?? "title",
                color: blackColor,
              )
            ],
          )),
    );
  }
}
