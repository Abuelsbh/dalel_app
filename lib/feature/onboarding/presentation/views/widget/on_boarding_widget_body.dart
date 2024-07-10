import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
   OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount : 3,
          itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(Assets.imagesOnBoarding1),
                SizedBox(height: 24,),
                CustomSmoothPageIndicator(controller: _controller),
                SizedBox(height: 32,),
                Text(
                  "Explore The history with Dalel in a smart way",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "Poppins"
                  ).copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16,),
                Text(
                  "Explore The history with Dalel in a smart way",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontFamily: "Poppins"
                  ) ,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }
      ),
    );
  }
}