import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      //* body of page
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  width: double.infinity,
                  height: 300,
                  color: greenDarkColor,
                )),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* divider
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 5,
                    decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),

                //* member type
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                        color: orangeLightColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: txt(
                        "Gold Member",
                        color: orangeDarkColor,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //* name - email
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* name
                          txt(
                            "Amin Farshbaf",
                            size: 30,
                            fontWeight: FontWeight.bold,
                          ),

                          //* email
                          txt(
                            "helloamin.com@gmail.com",
                            color: greyColor,
                          ),
                        ],
                      ),

                      //* edit button
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.pencil_circle,
                            color: greenLightColor,
                            size: 45,
                          ))
                    ],
                  ),
                ),

                //* voucher amount
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: greyColor),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        //* icon
                        Image.asset("assets/images/voucher.png"),

                        //* amount
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: txt(
                            "You have 12 voucher.",
                            fontWeight: FontWeight.bold,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //* favorite
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //* title
                      const txt(
                        "Favorite",
                        fontWeight: FontWeight.bold,
                        size: 16,
                      ),

                      //* favorite food
                      Container(
                        width: double.infinity,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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

                              //* buy again button
                              ButtonWidget(
                                "Buy Again",
                                height: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
