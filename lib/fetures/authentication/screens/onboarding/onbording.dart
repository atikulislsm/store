import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/fetures/authentication/controlls/onboarding_controller.dart';
import 'package:store/fetures/authentication/screens/widgets/on_boarding_page.dart';
import 'package:store/fetures/authentication/screens/widgets/onboarding_navigation.dart';
import 'package:store/fetures/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:store/fetures/authentication/screens/widgets/onboarding_skip.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/text_strings.dart';


class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());

    return  Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnBoardingNavigation(),
          
          //Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}








