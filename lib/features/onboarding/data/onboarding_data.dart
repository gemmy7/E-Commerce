import 'package:e_commerce/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: AppAssets.onboarding1,
    title: "shoping now",
    subTitle:
        "Find the best products from all over the world with the best quality",
  ),
  OnBoardingModel(
    imagePath: AppAssets.onboarding2,
    title: "Big Discounts for online payment",
    subTitle: "Get the best offer for every product you buy online",
  ),
  OnBoardingModel(
    imagePath: AppAssets.onboarding3,
    title: "Free shipping",
    subTitle:
        "Get the best offer for every product you buy online and get free shipping",
  ),
];
