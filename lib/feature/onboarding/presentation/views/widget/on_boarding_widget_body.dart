import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/onboarding/data/models/on_boarding_model.dart';
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
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
          controller: _controller,
          itemCount : onBoardingData.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  height: 290,
                  width: 343,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          onBoardingData[index].imagePath
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                CustomSmoothPageIndicator(controller: _controller),
                SizedBox(height: 32,),
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis
                ),
                SizedBox(height: 16,),
                Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300style16 ,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }
      ),
    );
  }
}