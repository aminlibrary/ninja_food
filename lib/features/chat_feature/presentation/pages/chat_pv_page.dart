import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/chat_feature/presentation/widget/chat_message_widget.dart';

class ChatPvPage extends StatelessWidget {
  const ChatPvPage({super.key});

  @override
  Widget build(BuildContext context) {
    List messages = [
      {"isUser": true, "message": "hi", "date": "20:00", "isSeen": true},
      {"isUser": false, "message": "hi", "date": "20:00", "isSeen": true},
      {
        "isUser": false,
        "message": "what is your order?",
        "date": "20:00",
        "isSeen": true
      },
      {"isUser": true, "message": "potato", "date": "20:00", "isSeen": true},
      {"isUser": false, "message": "done", "date": "20:00", "isSeen": false},
    ];

    return SafeArea(
        child: Scaffold(
      //* body of page
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png")),
            color: whiteColor),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* top bar
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* back button
                    BackButtonWidget(),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* title
                    txt(
                      "Chat",
                      size: 28,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),

                //* person profile
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 95,
                    padding: const EdgeInsets.symmetric(horizontal: 7.5),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            //* person profile
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                  color: greenDarkColor,
                                  borderRadius: BorderRadius.circular(15)),
                            ),

                            //* person details
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //* name
                                  txt(
                                    "Person name",
                                    fontWeight: FontWeight.bold,
                                    size: 18,
                                  ),

                                  //* statue
                                  Row(
                                    children: [
                                      //* online icon
                                      CircleAvatar(
                                        backgroundColor: greenLightColor,
                                        radius: 5,
                                      ),

                                      // space
                                      SizedBox(
                                        width: 5,
                                      ),

                                      //* online text
                                      txt("online")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        //* call button
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: greyWhiteColor,
                          child: IconButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, "/call"),
                            icon: const Icon(
                              Icons.phone_rounded,
                              color: greenDarkColor,
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    //* chat
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 500,
                        child: SingleChildScrollView(
                          child: Column(
                            children: List.generate(
                                5,
                                (index) => ChatMessageWidget(
                                      isUser: messages[index]["isUser"],
                                      message: messages[index]["message"],
                                      date: messages[index]["date"],
                                      isSeen: messages[index]["isSeen"],
                                    )),
                          ),
                        ),
                      ),
                    ),

                    //* send box
                    Container(
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor),
                          borderRadius: BorderRadius.circular(15)),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send_rounded,
                              color: greenLightColor,
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
