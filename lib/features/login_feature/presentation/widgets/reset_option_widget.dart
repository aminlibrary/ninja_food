import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class ResetOptionWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onTap;
  const ResetOptionWidget(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: whiteColor,
              elevation: 0,
              side: const BorderSide(color: greyColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: onTap,
          child: Row(
            children: [
              //* icon
              Icon(
                icon,
                color: greenLightColor,
                size: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    txt(
                      title,
                      color: greyColor,
                    ),
                    txt(
                      subtitle,
                      color: blackColor,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
