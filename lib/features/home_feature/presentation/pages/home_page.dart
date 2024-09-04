import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/home_search_bar.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/home_top_bar_widget.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/most_offers_list.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/nearest_list.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/popular_list.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/popular_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //* top bar
          const HomeTopBarWidget(),

          //* search bar
          const HomeSearchBar(
            searchBarIsOn: false,
          ),

          //* offers list
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 125,
              child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 125,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: greenLightColor,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),
          ),

          //* nearest restaurant
          const NearestList(),

          //* popular menu
          const PopularMenu(),

          //* popular restaurant
          const PopularList(),

          //* the most offers
          const MostOffersList(),

          // space
          const SizedBox(
            width: double.infinity,
            height: 100,
          )
        ],
      ),
    );
  }
}
