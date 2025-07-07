import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/images/t_circular_image.dart';
import 'package:store/common/widgets/texts/product_price_text.dart';
import 'package:store/common/widgets/texts/product_title_text.dart';
import 'package:store/common/widgets/texts/verified_icon_with_brand_title.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/enums.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// price & sale price
        Row(
          children: [
            ///sale tag
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            /// price tag
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems,),
            ProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Title
        const ProductTitleText(title: 'Green Nike sports shirt',),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// stock Status
        Row(
          children: [
            ProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('InStock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),
        /// Brand
        Row(
          children: [
            TCircularImage(
              height: 32,
                width: 32,
                overlayColor: darkMode? TColors.white: TColors.black,
                image: TImages.shoeIcon),
            VerifiedIconWithBrandTitle(title: 'nike', brandTextSizes: TextSizes.medium,),
          ],
        ),
      ],
    );
  }
}
