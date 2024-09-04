import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/cubit/bnb_cubit.dart';
import 'package:ninja_food/core/widgets/bnb_active_item.dart';

class BottomNavBarWidget extends StatelessWidget {
  final PageController pageController;
  const BottomNavBarWidget({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
            width: double.infinity,
            height: 80,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Builder(builder: (context) {
                var state = context.watch<BnbCubit>().state;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //* home icon
                    state == 0
                        ? BnbActiveItem(
                            itemName: "Home",
                            itemIcon: CupertinoIcons.house_fill,
                            onTap: () {})
                        : IconButton(
                            onPressed: () {
                              //* switch page
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);

                              //* set index
                              BlocProvider.of<BnbCubit>(context)
                                  .toggleBnbIndex(0);
                            },
                            icon: const Icon(
                              CupertinoIcons.house,
                              color: greenLightColor,
                            )),

                    //* profile icon
                    state == 1
                        ? BnbActiveItem(
                            itemName: "Profile",
                            itemIcon: CupertinoIcons.person_fill,
                            onTap: () {})
                        : IconButton(
                            onPressed: () {
                              //* switch page
                              pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);

                              //* set index
                              BlocProvider.of<BnbCubit>(context)
                                  .toggleBnbIndex(1);
                            },
                            icon: const Icon(
                              CupertinoIcons.person,
                              color: greenLightColor,
                            )),

                    //* cart icon
                    state == 2
                        ? BnbActiveItem(
                            itemName: "Cart",
                            itemIcon: CupertinoIcons.cart_fill,
                            onTap: () {})
                        : IconButton(
                            onPressed: () {
                              //* switch page
                              pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);

                              //* set index
                              BlocProvider.of<BnbCubit>(context)
                                  .toggleBnbIndex(2);
                            },
                            icon: const Icon(
                              CupertinoIcons.cart,
                              color: greenLightColor,
                            )),

                    //* messages
                    state == 3
                        ? BnbActiveItem(
                            itemName: "Chat",
                            itemIcon: CupertinoIcons.chat_bubble_fill,
                            onTap: () {})
                        : IconButton(
                            onPressed: () {
                              //* switch page
                              pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);

                              //* set index
                              BlocProvider.of<BnbCubit>(context)
                                  .toggleBnbIndex(3);
                            },
                            icon: const Icon(
                              CupertinoIcons.chat_bubble,
                              color: greenLightColor,
                            )),
                  ],
                );
              }),
            )));
  }
}
