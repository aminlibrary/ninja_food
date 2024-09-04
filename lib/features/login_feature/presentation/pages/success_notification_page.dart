import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class SuccessNotificationPage extends StatelessWidget {
  final String? subtitle;
  const SuccessNotificationPage({this.subtitle, super.key});

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
                image: AssetImage("assets/images/background.png"))),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //* image
                  Image.asset("assets/images/congrats.png"),

                  //* title txt
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: txt(
                      "Congrats!",
                      color: greenLightColor,
                      size: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //* subtitle txt
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: txt(
                      subtitle ?? "subtitle",
                      size: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            //* try order button
            ButtonWidget(
              width: 150,
              height: 50,
              "Try Order",
              onTap: () {
                //* push to main wrapper
                Navigator.pushNamed(context, '/main');
              },
            )
          ],
        ),
      ),
    ));
  }
}
