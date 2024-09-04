import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/payments_button.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/top_bar_widget.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({super.key});

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
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: TopBarWidget(
                  title: "Payment Method",
                ),
              ),

              //* payment method button
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    //* paypal
                    PaymentsButton(imagePath: "assets/images/paypal.png"),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* visa
                    PaymentsButton(imagePath: "assets/images/visa.png"),

                    // space
                    SizedBox(
                      height: 15,
                    ),

                    //* payoneer
                    PaymentsButton(imagePath: "assets/images/Payoneer.png")
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
                      Navigator.pushNamed(context, "/photo");
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
