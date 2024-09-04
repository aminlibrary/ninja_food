import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class UploadPhotoOptionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const UploadPhotoOptionWidget(
      {required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 125,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* icon
              Icon(
                icon,
                color: greenLightColor,
                size: 40,
              ),

              //* text
              txt(
                title,
                size: 16,
                color: blackColor,
                fontWeight: FontWeight.bold,
              )
            ],
          )),
    );
  }
}
