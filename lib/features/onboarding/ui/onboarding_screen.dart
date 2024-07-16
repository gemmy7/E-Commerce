import 'package:e_commerce/core/helpers/extensions.dart';
import 'package:e_commerce/core/routes/routes_constants.dart';
import 'package:e_commerce/core/utils/app_responsive.dart';
import 'package:e_commerce/features/onboarding/ui/widgets/custom_nav_bar.dart';
import 'package:e_commerce/features/onboarding/ui/widgets/custom_onboarding_body.dart';
import 'package:e_commerce/features/onboarding/ui/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  get children => null;

  get curve => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: AppResponsive.height40(context),
              ),
              CustomNavBar(
                onTap: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
              ),
              SizedBox(
                height: AppResponsive.height55(context),
              ),
              OnBoardingBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              OnboardingButtonBody(
                currentIndex: currentIndex,
                controller: _controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
