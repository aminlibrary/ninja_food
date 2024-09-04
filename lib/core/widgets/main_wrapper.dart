import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/cubit/bnb_cubit.dart';
import 'package:ninja_food/core/widgets/main_stack.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // widgets
    return SafeArea(
        child: Scaffold(
      //* body of page
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: whiteColor,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png")),
          ),
          child: BlocProvider(
            create: (_) => BnbCubit(),
            child: const MainStack(),
          )),
    ));
  }
}
