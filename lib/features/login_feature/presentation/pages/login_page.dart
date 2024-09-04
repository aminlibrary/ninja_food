import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/text_field_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/sign_option_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
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
                "Login To your account",
                fontWeight: FontWeight.bold,
                size: 20,
              ),
            ),

            //* fields
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //* email field
                    TextFieldWidget(
                      hint: "Email",
                    ),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* password field
                    TextFieldWidget(
                      hint: "Password",
                    )
                  ],
                )),

            //* divider text
            const txt(
              "Or Continue With",
              fontWeight: FontWeight.bold,
            ),

            //* sign in options button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //* google button
                    SignOptionButton(
                      title: "Google",
                      icon: Image.asset(
                        "assets/images/google.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fill,
                      ),
                      onTap: () {},
                    ),

                    //* facebook button
                    SignOptionButton(
                        title: "Facebook",
                        icon: Image.asset(
                          "assets/images/facebook.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                        onTap: () {})
                  ],
                ),
              ),
            ),

            //* forget passwork button
            TextButton(
                onPressed: () {
                  //* push to reset password page
                  Navigator.pushNamed(context, "/passreset");
                },
                child: const txt(
                  "forget your password?.",
                  color: greenLightColor,
                  decoration: TextDecoration.underline,
                  decorationColor: greenLightColor,
                )),

            //* login button
            ButtonWidget(
              width: 175,
              "Login",
              onTap: () {},
            )
          ],
        ),
      ),
    ));
  }
}
