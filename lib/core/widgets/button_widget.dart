import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class ButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String? text;
  final Function()? onTap;
  final Color? color;
  final Color? txtColor;
  const ButtonWidget(this.text,
      {this.width,
      this.height,
      this.onTap,
      this.color,
      this.txtColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              colors: [color ?? greenLightColor, color ?? greenDarkColor])),
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onPressed: onTap,
          child: txt(
            text ?? "text",
            color: txtColor ?? whiteColor,
          )),
    );
  }
}
