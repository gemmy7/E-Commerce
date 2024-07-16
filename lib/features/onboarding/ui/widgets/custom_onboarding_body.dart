import 'package:e_commerce/core/utils/app_responsive.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/features/onboarding/data/onboarding_data.dart';
import 'package:e_commerce/features/onboarding/ui/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                height: 280,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      onBoardingData[index].imagePath,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: AppResponsive.height40(context)),
              CustomSmoothPageIndicator(controller: controller),
              SizedBox(height: AppResponsive.height55(context)),
              Text(
                onBoardingData[index].title,
                style: AppTextStyles.font24WhiteBold,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppResponsive.height30(context)),
              Text(
                onBoardingData[index].subTitle,
                style: AppTextStyles.font14LightGrayRegular,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        }),
      ),
    );
  }
}
