import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    //* images adress
    final List<String> imagesList = [
      "assets/images/onboarding_1.png",
      "assets/images/onboarding_2.png",
    ];

    //* title list
    final List<String> titleList = [
      "Find your Comfort Food here",
      "Food Ninja Where Your Comfort Food Lives"
    ];

    //* subtitle list
    final List<String> subtitleList = [
      "Here You Can find a chef or dish for every taste and color Enjoy!",
      "Enjoy a fast and smooth food delivery at your doorstep"
    ];

    //* page controller
    final PageController pageController = PageController();

    //* page index
    int pageIndex = 0;

    return SafeArea(
        child: Scaffold(
            body: Container(
      width: double.infinity,
      height: double.infinity,
      color: whiteColor,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: PageView.builder(
                controller: pageController,
                itemCount: imagesList.length,
                onPageChanged: (value) => pageIndex = value,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //* image
                      Image.asset(imagesList[index]),

                      SizedBox(
                        width: 275,
                        child: Column(
                          children: [
                            //* title
                            txt(
                              titleList[index],
                              size: 24,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.bold,
                            ),

                            // space
                            const SizedBox(
                              height: 25,
                            ),

                            //* subtitle
                            txt(
                              subtitleList[index],
                              size: 13,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w100,
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),

          //* next button
          ButtonWidget(
            "Next",
            width: 200,
            height: 50,
            onTap: () {
              switch (pageIndex) {
                case 0:
                  pageController.animateToPage(pageIndex + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);

                default:
                  Navigator.pushNamed(context, "/signup");
              }
            },
          )
        ],
      ),
    )));
  }
}
