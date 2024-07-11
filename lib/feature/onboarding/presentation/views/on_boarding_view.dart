
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widget/custom_button.dart';
import 'package:dalel_app/feature/onboarding/presentation/views/widget/custom_nav_bar.dart';
import 'package:dalel_app/feature/onboarding/presentation/views/widget/on_boarding_widget_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40,),
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              const SizedBox(height: 88,),
              CustomBtn(text: AppStrings.next),
              const SizedBox(height: 17,)
            ],
          ),
        ),
      ),
    );
  }
}


