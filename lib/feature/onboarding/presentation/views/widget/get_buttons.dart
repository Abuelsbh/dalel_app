import 'package:dalel_app/feature/onboarding/presentation/views/functions/on_boarding.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/functions/navigation.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(text: AppStrings.createAccount,onPressed: (){
            onBoardingVisited();
            customReplacementNavigation(context, "/signUp");
          },),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: (){
              onBoardingVisited();
              customReplacementNavigation(context, "/signIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16.copyWith(fontWeight: FontWeight.w400
              ),
            ),
          )
        ],
      );
    } else {
      return CustomBtn(text: AppStrings.next,
        onPressed: (){
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn
          );
        },
      );
    }
  }
}



