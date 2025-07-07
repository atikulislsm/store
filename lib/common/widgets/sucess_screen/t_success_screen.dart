import 'package:flutter/material.dart';
import 'package:store/common/style/spacing_style.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TSuccessScreen extends StatelessWidget {
  const TSuccessScreen({super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed
  });
final String image, title, subtitle;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpaceingStyel.paddWithAppBarHeight *2,
          child: Column(
            children: [
              Image(image: AssetImage(image), width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// title & subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(subtitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),


              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: Text(TTexts.tContinue)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
