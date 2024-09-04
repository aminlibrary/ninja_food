import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //* body of page
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: whiteColor,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* person avatar
            const CircleAvatar(
              backgroundColor: greenLightColor,
              radius: 75,
              child: CircleAvatar(
                backgroundColor: redColor,
                radius: 70,
              ),
            ),

            //* person name
            const Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: txt(
                "Person Name",
                fontWeight: FontWeight.bold,
                size: 24,
              ),
            ),

            //* call time
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: txt(
                "15:23 min",
                color: greyColor,
              ),
            ),

            //* option button
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //* mute button
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: greyWhiteColor,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_up_rounded,
                          color: greenLightColor,
                          size: 40,
                        )),
                  ),

                  //* cancel button
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: redColor,
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.close_rounded,
                            color: whiteColor,
                            size: 40,
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
