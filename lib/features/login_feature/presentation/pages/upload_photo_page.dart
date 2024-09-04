import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/top_bar_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/upload_photo_option_widget.dart';

class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //* body of page
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png")),
            color: whiteColor),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* back button
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: BackButtonWidget(),
              ),

              //* top bar
              const TopBarWidget(
                title: "Upload Your Photo Profile",
              ),

              //* upload photo options
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    //* from gallery
                    UploadPhotoOptionWidget(
                      icon: CupertinoIcons.photo_on_rectangle,
                      title: "From Gallery",
                    ),

                    // space
                    SizedBox(
                      height: 15,
                    ), //* take photo
                    UploadPhotoOptionWidget(
                        icon: CupertinoIcons.camera, title: "Take Photo")
                  ],
                ),
              ),

              //* next button
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Center(
                  child: ButtonWidget(
                    width: 150,
                    height: 50,
                    "Next",
                    onTap: () {
                      //* push payment page
                      Navigator.pushNamed(context, "/location");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
