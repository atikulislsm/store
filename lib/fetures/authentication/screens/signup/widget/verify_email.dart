import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/widget_login_signup/success_screen.dart';
import 'package:store/fetures/authentication/screens/login/login_screen.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth()+0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Tittle & Subtitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Text('atikul.islam.atik1971@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Buttons
              SizedBox(width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to((SuccessScreen())),
                      child:  Text(TTexts.tContinue)
                  )
                ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,
                  child: TextButton(
                      onPressed: (){},
                      child:  Text(TTexts.resendEmail)
                  )
                )
            ],
          ),

        ),
      ),
    );
  }
}
