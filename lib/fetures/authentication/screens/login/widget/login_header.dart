import 'package:flutter/material.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(dark? TImages.lightAppLogo: TImages.darkAppLogo)),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),

      ],
    );
  }
}