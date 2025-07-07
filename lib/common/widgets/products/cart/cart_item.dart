import 'package:flutter/material.dart';
import 'package:store/common/widgets/texts/product_title_text.dart';
import 'package:store/common/widgets/texts/verified_icon_with_brand_title.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

import '../../images/rounded_images.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        RoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backGroundColor: darkMode? TColors.darkerGrey: TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        /// Title, Price & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerifiedIconWithBrandTitle(title: 'Nike'),
            ProductTitleText(title: 'Black Sport Shoes', maxLine: 1,),
            /// Atributes
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall ),
                      TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge ),
                      TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodyLarge ),
                      TextSpan(text: '32',style: Theme.of(context).textTheme.bodyLarge ),
                    ]
                )
            )
          ],
        )
      ],
    );
  }
}
