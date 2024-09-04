import 'package:flutter/material.dart';
import 'package:ninja_food/core/widgets/main_wrapper.dart';
import 'package:ninja_food/features/chat_feature/presentation/pages/call_page.dart';
import 'package:ninja_food/features/chat_feature/presentation/pages/chat_page.dart';
import 'package:ninja_food/features/chat_feature/presentation/pages/chat_pv_page.dart';
import 'package:ninja_food/features/home_feature/presentation/pages/home_page.dart';
import 'package:ninja_food/features/home_feature/presentation/pages/search_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/login_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/password_reset_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/payment_methods_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/set_location_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/sign_up_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/sign_up_process_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/success_notification_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/upload_photo_page.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/verification_page.dart';
import 'package:ninja_food/features/onboarding_feature/presentation/pages/onboarding_page.dart';
import 'package:ninja_food/features/onboarding_feature/presentation/pages/splash_screen.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    "/splash": (context) => const SplashScreen(),
    "/onboarding": (context) => const OnboardingPage(),
    "/login": (context) => const LoginPage(),
    "/signup": (context) => const SignUpPage(),
    "/signupprocess": (context) => const SignUpProcessPage(),
    "/payment": (context) => const PaymentMethodsPage(),
    "/photo": (context) => const UploadPhotoPage(),
    "/location": (context) => const SetLocationPage(),
    "/success": (context) => const SuccessNotificationPage(),
    "/passreset": (context) => const PasswordResetPage(),
    "/verification": (context) => const VerificationPage(),
    "/main": (context) => const MainWrapper(),
    "/home": (context) => const HomePage(),
    "/search": (context) => const SearchPage(),
    "/chat": (context) => const ChatPage(),
    "/pv": (context) => const ChatPvPage(),
    "/call": (context) => const CallPage(),
  };
}
