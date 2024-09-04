import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ninja_food/core/constants/controllers.dart';
import 'package:ninja_food/core/cubit/bnb_cubit.dart';
import 'package:ninja_food/core/widgets/bottom_nav_bar_widget.dart';
import 'package:ninja_food/features/cart_feature/presentation/pages/cart_page.dart';
import 'package:ninja_food/features/chat_feature/presentation/pages/chat_page.dart';
import 'package:ninja_food/features/home_feature/presentation/pages/home_page.dart';
import 'package:ninja_food/features/profile_feature/presentation/pages/profile_page.dart';

class MainStack extends StatelessWidget {
  const MainStack({super.key});

  @override
  Widget build(BuildContext context) {
    //* page controller
    final PageController pageController = Controllers.mainPageController;

    //
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        //* page view
        PageView(
          controller: pageController,
          onPageChanged: (value) =>
              BlocProvider.of<BnbCubit>(context).toggleBnbIndex(value),
          children: const [HomePage(), ProfilePage(), CartPage(), ChatPage()],
        ),

        //* bottom nav
        BottomNavBarWidget(
          pageController: pageController,
        )
      ],
    );
  }
}
