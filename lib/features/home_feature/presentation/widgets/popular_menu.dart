import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* title
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* title
                const txt(
                  "Popular Menu",
                  size: 18,
                  fontWeight: FontWeight.bold,
                ),

                //* view more button
                TextButton(
                    onPressed: () {},
                    child: const txt(
                      "View More",
                      color: orangeDarkColor,
                    ))
              ],
            )),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
              width: double.infinity,
              height: 360,
              child: Column(
                children: List.generate(3, (index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: greyColor,
                              blurRadius: 5,
                              offset: Offset(5, 5))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              //* food image
                              Icon(
                                Icons.restaurant,
                                size: 40,
                              ),

                              //* restaurant details
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //* food name
                                    txt(
                                      "Food Name",
                                      size: 20,
                                      fontWeight: FontWeight.bold,
                                    ),

                                    //* restaurant name
                                    txt(
                                      "res Name",
                                      color: greyColor,
                                      size: 16,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                          //* food price
                          txt(
                            "20\u0024",
                            size: 24,
                            fontWeight: FontWeight.bold,
                            color: orangeDarkColor,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )),
        )
      ],
    );
  }
}
