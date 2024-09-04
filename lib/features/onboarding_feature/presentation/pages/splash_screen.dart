import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //* init state
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 1),
        // ignore: use_build_context_synchronously
        () => Navigator.pushNamed(context, "/onboarding"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: whiteColor,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png")),
          ),
          child: Center(
            child: Image.asset("assets/images/Logo.png"),
          ),
        ),
      ),
    );
  }
}
