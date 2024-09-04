import 'package:flutter/material.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class TopBarWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const TopBarWidget({this.title, this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* title
          txt(
            title!,
            fontWeight: FontWeight.bold,
            size: 26,
          ),

          // space
          const SizedBox(
            height: 15,
          ),

          //* subtitle
          txt(
            subtitle ??
                "This data will be displayed in your account profile for security",
            fontWeight: FontWeight.w100,
            size: 16,
          ),
        ],
      ),
    );
  }
}
