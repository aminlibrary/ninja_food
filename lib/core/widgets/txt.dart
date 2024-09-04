import 'package:flutter/material.dart';

// ignore: camel_case_types
class txt extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final String? fontFamily;
  final int? maxLine;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final Color? decorationColor;

  const txt(this.text,
      {this.size,
      this.color,
      this.fontWeight,
      this.textAlign,
      this.fontFamily,
      this.maxLine,
      this.textOverflow,
      this.decoration,
      this.decorationColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: textOverflow,
      style: TextStyle(
        decoration: decoration,
        decorationColor: decorationColor,
        fontSize: size,
        color: color,
        fontFamily: fontFamily ?? "bentonsans",
        fontWeight: fontWeight,
      ),
    );
  }
}
