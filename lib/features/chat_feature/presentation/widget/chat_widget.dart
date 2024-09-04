import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/chat_feature/presentation/pages/chat_pv_page.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ChatPvPage())),
      child: Container(
        width: double.infinity,
        height: 95,
        margin: const EdgeInsets.symmetric(vertical: 7.5),
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(width: 1, color: greyColor),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                //* profile image
                Container(
                  width: 75,
                  height: 75,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: greenDarkColor,
                      borderRadius: BorderRadius.circular(15)),
                ),

                //* person details
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //* person name
                    txt(
                      "Person name",
                      size: 18,
                      fontWeight: FontWeight.bold,
                    ),

                    //* description
                    txt(
                      "Your order just arrived!.",
                      color: greyColor,
                    )
                  ],
                ),
              ],
            ),

            //* last message date
            const Padding(
              padding: EdgeInsets.only(right: 10.0, top: 10),
              child: Align(
                alignment: Alignment.topCenter,
                child: txt(
                  "20:00",
                  color: greyColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
