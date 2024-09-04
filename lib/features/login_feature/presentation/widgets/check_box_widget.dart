import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool value;
  final Function(bool?)? onChanged;
  final String? title;
  const CheckBoxWidget(
      {required this.value, required this.onChanged, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* check box
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                greenLightColor,
                greenDarkColor,
              ]),
              borderRadius: BorderRadius.circular(15)),
          child: Checkbox(
              activeColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              //activeColor: Colors.transparent,
              value: value,
              onChanged: onChanged),
        ),

        // space
        const SizedBox(
          width: 15,
        ),

        //* title
        txt(title ?? "title"),
      ],
    );
  }
}
