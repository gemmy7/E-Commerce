import 'package:e_commerce/core/helpers/extensions.dart';
import 'package:e_commerce/core/routes/routes_constants.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/app_text_button.dart';
import 'package:e_commerce/features/onboarding/data/onboarding_data.dart';
import 'package:flutter/material.dart';

class OnboardingButtonBody extends StatelessWidget {
  const OnboardingButtonBody(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          TextButtonWidget(
            buttonText: 'Get Started',
            textStyle: AppTextStyles.font14WhiteMedium,
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
              onTap: () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
              child: Text(
                'Sign Up',
                style: AppTextStyles.font14WhiteMedium,
              ))
        ],
      );
    } else {
      return TextButtonWidget(
        buttonText: 'Next',
        textStyle: AppTextStyles.font14WhiteMedium,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(microseconds: 200),
              curve: Curves.bounceIn);
        },
      );
    }
  }
}
