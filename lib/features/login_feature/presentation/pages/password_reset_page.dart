import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_food/core/constants/colors.dart';
import 'package:ninja_food/core/widgets/back_button_widget.dart';
import 'package:ninja_food/core/widgets/button_widget.dart';
import 'package:ninja_food/core/widgets/text_field_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/pages/success_notification_page.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/reset_option_widget.dart';
import 'package:ninja_food/features/login_feature/presentation/widgets/top_bar_widget.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    //* title list
    List<String> titleList = ["Forgot password?", "Reset your password here"];

    //* page controller
    PageController pageController = PageController();

    //* page view index
    int pageViewIndex = 0;

    return SafeArea(
        child: Scaffold(
      //* body of page
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: whiteColor,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"))),
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

              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.40,
                child: PageView.builder(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) => pageViewIndex = value,
                  itemCount: titleList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      //* top bar
                      TopBarWidget(
                        title: titleList[index],
                        subtitle:
                            "Select which contact details should we use to reset your password",
                      ),

                      //* reset options
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: index == 0
                            ? Column(
                                children: [
                                  //* via sms
                                  ResetOptionWidget(
                                    title: "Via sms:",
                                    subtitle: "+98994*****30",
                                    icon: CupertinoIcons.conversation_bubble,
                                    onTap: () {},
                                  ),

                                  // space
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  //* via email
                                  ResetOptionWidget(
                                    title: "Via email:",
                                    subtitle: "hello********@gmail.com",
                                    icon: CupertinoIcons.mail,
                                    onTap: () {},
                                  ),
                                ],
                              )
                            : const Column(
                                children: [
                                  //* new pass field
                                  TextFieldWidget(
                                    hint: "New Password",
                                    hideText: false,
                                    suffixOn: true,
                                    suffixIcon: CupertinoIcons.eye,
                                  ),

                                  // space
                                  SizedBox(
                                    height: 15,
                                  ),

                                  //* confirm pass field
                                  TextFieldWidget(
                                    hint: "Confirm Password",
                                    hideText: false,
                                    suffixOn: true,
                                    suffixIcon: CupertinoIcons.eye,
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              ),

              //* next button
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Center(
                  child: ButtonWidget(
                    width: 150,
                    height: 50,
                    "Next",
                    onTap: () {
                      if (pageViewIndex == 1) {
                        //* push success page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SuccessNotificationPage(
                                      subtitle: "Password reset succesful",
                                    )));
                      } else {
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);

                        pageViewIndex = 1;
                      }
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
