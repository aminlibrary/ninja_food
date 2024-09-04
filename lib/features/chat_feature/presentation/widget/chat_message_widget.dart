import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class ChatMessageWidget extends StatelessWidget {
  final bool isUser;
  final String message;
  final String date;
  final bool isSeen;
  const ChatMessageWidget(
      {required this.isUser,
      required this.message,
      required this.date,
      required this.isSeen,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser == true ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.5,
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: isUser == true ? greenDarkColor : greyWhiteColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* message txt
              txt(
                message,
                color: isUser == true ? whiteColor : blackColor,
                size: 16,
              ),

              //* date and seen
              Row(
                children: [
                  //* seen icon
                  Icon(
                    isSeen == true
                        ? Icons.done_all_rounded
                        : Icons.done_rounded,
                    color: isUser == true ? whiteColor : greenLightColor,
                    size: 15,
                  ),

                  // space
                  const SizedBox(
                    width: 5,
                  ),

                  //* date
                  txt(
                    date,
                    color: greyColor,
                    size: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
