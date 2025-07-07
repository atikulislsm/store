import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/style/spacing_style.dart';
import 'package:store/fetures/authentication/screens/login/login_screen.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpaceingStyel.paddWithAppBarHeight,
          child: Column(
            children: [
              //Images
              Image(image: AssetImage(TImages.staticSuccessIllustration), width: THelperFunctions.screenWidth() *0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title & Subtitle
              Text(TTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('atikul.islam.atik1971@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Buttons
              SizedBox( width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to((LoginScreen())), child: const Text(TTexts.tContinue),),),
            ],
          ),
        ),
      ),
    );
  }
}
