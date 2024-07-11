import 'package:dalel_app/core/utils/assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding,
      title: "Explore The history with Dalel in a smart way",
      subTitle: "Explore The history with Dalel in a smart way"
  ),
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding1,
      title: "From every place on earth",
      subTitle: "A big variety of ancient places from all over the world"
  ),
  OnBoardingModel(
      imagePath: Assets.imagesOnBoarding2,
      title: "Using modern AI technology for better user experience",
      subTitle: "AI provide recommendations and helps you to continue the search journey"
  ),
];