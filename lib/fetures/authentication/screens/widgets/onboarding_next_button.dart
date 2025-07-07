import 'package:flutter/material.dart';
import 'package:store/fetures/authentication/controlls/onboarding_controller.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utility.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: (){
              OnBoardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: dark? TColors.primary : Colors.black),
            child: const Icon(Icons.arrow_forward_ios_outlined)
        )
    );
  }
}