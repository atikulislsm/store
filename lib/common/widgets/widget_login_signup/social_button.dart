import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
              onPressed: (){},
              icon: Image(
                  height: TSizes.iconMd,
                  width: TSizes.iconMd,
                  image: AssetImage(TImages.google))),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
              onPressed: (){},
              icon: Image(
                  height: TSizes.iconMd,
                  width: TSizes.iconMd,
                  image: AssetImage(TImages.facebook)
              )
          ),
        ),
      ],
    );
  }
}