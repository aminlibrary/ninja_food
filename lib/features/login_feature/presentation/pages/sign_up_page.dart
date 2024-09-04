import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/text_field_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/check_box_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* app logo
            Image.asset("assets/images/Logo.png"),

            //* title
            const Padding(
              padding: EdgeInsets.only(top: 45.0),
              child: txt(
                "Sign Up for FREE",
                size: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            //* fields
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //* name field
                  TextFieldWidget(
                    hint: "Full Name",
                    prefixOn: true,
                    prefixIcon: CupertinoIcons.person,
                  ),

                  // space
                  SizedBox(
                    height: 15,
                  ),

                  //* email field
                  TextFieldWidget(
                    hint: "Email",
                    prefixOn: true,
                    prefixIcon: CupertinoIcons.mail,
                  ),

                  // space
                  SizedBox(
                    height: 15,
                  ),

                  //* password field
                  TextFieldWidget(
                    hint: "Password",
                    prefixOn: true,
                    prefixIcon: CupertinoIcons.lock,
                    suffixOn: true,
                    suffixIcon: CupertinoIcons.eye,
                  ),
                ],
              ),
            ),

            //* check boxes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //* keep me signed in
                  CheckBoxWidget(
                      title: "Keep Me Signed In",
                      value: true,
                      onChanged: (value) {}),

                  // space
                  const SizedBox(
                    height: 15,
                  ),

                  //* email me
                  CheckBoxWidget(
                      title: "Email Me About Special Pricing",
                      value: true,
                      onChanged: (value) {})
                ],
              ),
            ),

            //* create account button
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: ButtonWidget(
                "Create Account",
                onTap: () {
                  //* push sign up process page
                  Navigator.pushNamed(context, "/signupprocess");
                },
              ),
            ),

            //* have account button
            TextButton(
                onPressed: () {
                  //* push login page
                  Navigator.pushNamed(context, "/login");
                },
                child: const txt(
                  "already have an account?.",
                  color: greenLightColor,
                  decoration: TextDecoration.underline,
                  decorationColor: greenLightColor,
                )),
          ],
        ),
      ),
    ));
  }
}
