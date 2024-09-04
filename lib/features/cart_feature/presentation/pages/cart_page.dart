import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/cart_feature/presentation/widgets/price_info_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* top bar
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* back button
                    BackButtonWidget(),

                    //* title
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: txt(
                        "Order details",
                        size: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: List.generate(10, (index) {
                  return Dismissible(
                    key: Key(index.toString()),
                    onDismissed: (direction) {},
                    background: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 100,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                //* icon
                                Icon(
                                  Icons.restaurant,
                                  size: 40,
                                ),

                                //* food details
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //* name
                                      txt(
                                        "Food name",
                                        fontWeight: FontWeight.bold,
                                        size: 18,
                                      ),

                                      //* res name
                                      txt(
                                        "Res Name",
                                        color: greyColor,
                                        size: 16,
                                      ),

                                      //* price
                                      txt(
                                        "35\u0024",
                                        fontWeight: FontWeight.bold,
                                        color: greenLightColor,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            //* value manager
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),

      //* price info
      const PriceInfoCard()
    ]);
  }
}
