import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/txt.dart';

class HomeSearchBar extends StatelessWidget {
  final bool searchBarIsOn;
  const HomeSearchBar({required this.searchBarIsOn, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          //* push search page
          searchBarIsOn == false
              ? Navigator.pushNamed(context, "/search")
              : null;
        },
        child: Row(
          children: [
            //* search bar
            Expanded(
                child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: orangeLightColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: searchBarIsOn == true
                      ? TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What do you want to order",
                            hintStyle:
                                TextStyle(color: orangeDarkColor, fontSize: 14),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        )
                      : const Align(
                          alignment: Alignment.centerLeft,
                          child: txt(
                            "What do you want to order?",
                            color: orangeDarkColor,
                          ),
                        )),
            )),

            // space
            const SizedBox(
              width: 15,
            ),

            //* filter
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: orangeLightColor,
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_alt_rounded,
                    color: orangeDarkColor,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
