import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/success_notification_page.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/top_bar_widget.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* back button
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: BackButtonWidget(),
              ),

              //* topbar
              const TopBarWidget(
                title: "Set Your Location",
              ),

              //* location details
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    //* icon
                    Icon(
                      Icons.location_on_outlined,
                      color: orangeDarkColor,
                      size: 40,
                    ),

                    // space
                    SizedBox(
                      width: 20,
                    ),

                    //* location text
                    txt(
                      "Your location",
                      size: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),

              //* set location button
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: greyWhiteColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: const txt(
                        "Set Location",
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),

              //* next button
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: Center(
                  child: ButtonWidget(
                    width: 150,
                    height: 50,
                    "Next",
                    onTap: () {
                      //* push payment page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SuccessNotificationPage(
                                    subtitle: "Your Profile Is Ready To Use",
                                  )));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
