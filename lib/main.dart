import 'package:flutter/material.dart';
import 'package:ninja_food/core/routes/routes.dart';
import 'package:ninja_food/core/widgets/main_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ninja Food",
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      home: const MainWrapper(),
    );
  }
}
