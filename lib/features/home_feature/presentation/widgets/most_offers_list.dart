import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class MostOffersList extends StatelessWidget {
  const MostOffersList({super.key});

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
                  "the Most Offers",
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

        SizedBox(
          width: double.infinity,
          height: 230,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 175,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: greyColor,
                            blurRadius: 5,
                            offset: Offset(5, 5))
                      ]),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //* restaurant icon
                      Icon(
                        Icons.restaurant,
                        size: 50,
                      ),

                      //* restaurant name
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: txt(
                          "res Name",
                          fontWeight: FontWeight.bold,
                          size: 20,
                        ),
                      ),

                      //* restaurant distance time
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: txt(
                          "x mins",
                          color: greyColor,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
