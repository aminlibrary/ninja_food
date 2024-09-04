import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/text_field_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/top_bar_widget.dart';

class SignUpProcessPage extends StatelessWidget {
  const SignUpProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
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

              //* top bar
              const TopBarWidget(
                title: "Fill in your bio to get started",
              ),

              //* fields
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    //* first name
                    TextFieldWidget(
                      hint: "First name",
                    ),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* last name
                    TextFieldWidget(
                      hint: "Last name",
                    ),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* mobile number
                    TextFieldWidget(
                      hint: "Mobile number",
                    ),
                  ],
                ),
              ),

              //* next button
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Center(
                  child: ButtonWidget(
                    width: 150,
                    height: 50,
                    "Next",
                    onTap: () {
                      //* push payment page
                      Navigator.pushNamed(context, "/payment");
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
