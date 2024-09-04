import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/home_search_bar.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/home_top_bar_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    //* title list
    List<String> titleList = ["Type", "Location", "Food"];

    //* chips list
    List<List<String>> chips = [
      ["Restaurant", "Menu"],
      ["1 km", ">10 km", "<10 km"],
      ["Cake", "Soup", "Main Course", "Apptizer", "Dessert"],
    ];

    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: whiteColor,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //* top bar
              const HomeTopBarWidget(),

              //* search bar
              const HomeSearchBar(searchBarIsOn: true),

              //* chips
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(3, (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* title
                          txt(
                            titleList[index],
                            size: 18,
                            fontWeight: FontWeight.bold,
                          ),

                          //* chips
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                            ),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.start,
                              spacing: 15,
                              children: List.generate(chips[index].length,
                                  (chipIndex) {
                                return Chip(
                                    side: const BorderSide(
                                        color: orangeLightColor),
                                    backgroundColor: orangeLightColor,
                                    label: txt(
                                      chips[index][chipIndex],
                                      color: orangeDarkColor,
                                    ));
                              }),
                            ),
                          )
                        ],
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
