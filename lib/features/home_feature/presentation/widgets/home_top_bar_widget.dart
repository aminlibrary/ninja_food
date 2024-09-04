import 'package:flutter/material.dart';
import 'package:ninja_food/core/widgets/txt.dart';
import 'package:ninja_food/features/home_feature/presentation/widgets/bell_widget.dart';

class HomeTopBarWidget extends StatelessWidget {
  const HomeTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //* title
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.65,
            child: const txt(
              "Find Your Favorite Food",
              size: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          //* messages (bell icon)
          const BellWidget()
        ],
      ),
    );
  }
}
