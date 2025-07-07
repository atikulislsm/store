import 'package:flutter/material.dart';
import 'package:store/fetures/authentication/controlls/onboarding_controller.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: (){
          controller.skipPage();
        },
          child: Text('Skip'),
        )
    );
  }
}