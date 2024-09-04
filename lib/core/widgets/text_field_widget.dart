import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hint;
  final IconData? prefixIcon;
  final bool? prefixOn;
  final IconData? suffixIcon;
  final bool? suffixOn;
  final bool? hideText;

  const TextFieldWidget(
      {this.hint,
      this.prefixIcon,
      this.prefixOn,
      this.suffixIcon,
      this.suffixOn,
      this.hideText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hideText ?? false,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: greenLightColor,
            ),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: greyColor,
            ),
            borderRadius: BorderRadius.circular(15)),
        prefixIcon: prefixOn == true
            ? Icon(
                prefixIcon,
              )
            : const SizedBox(),
        prefixIconColor: greenLightColor,
        suffixIcon: suffixOn == true ? Icon(suffixIcon) : const SizedBox(),
        hintText: hint,
        hintStyle: const TextStyle(color: greyColor),
      ),
    );
  }
}
