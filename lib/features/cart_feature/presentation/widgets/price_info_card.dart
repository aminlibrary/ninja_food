import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/cart_feature/presentation/widgets/price_info_row.dart';

class PriceInfoCard extends StatelessWidget {
  const PriceInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.only(bottom: 110, left: 20, right: 20),
      decoration: BoxDecoration(
          color: greenLightColor,
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/Pattern.png",
              ),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* sub total
                PriceInfoRow(title: "Sub-total", value: "35"),

                //* sub total
                PriceInfoRow(title: "Delivery Charge", value: "35"),

                //* sub total
                PriceInfoRow(title: "Discount", value: "35"),

                //* sub total
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //* title
                    txt(
                      "Total",
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      size: 16,
                    ),

                    //* value
                    txt(
                      "105\u0024",
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),

            //* place my order button
            ButtonWidget(
                width: double.infinity,
                height: 40,
                color: whiteColor,
                txtColor: greenLightColor,
                onTap: () {},
                "Place My Order")
          ],
        ),
      ),
    );
  }
}
