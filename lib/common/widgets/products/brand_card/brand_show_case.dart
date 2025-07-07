import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/products/brand_card/t_brand_card.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key, required this.image,
  });
  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      isShowBorder: true,
      borderColor: TColors.grey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child:Column(
        children: [
          /// Brand Card with product count
          TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          /// Brand top 3 product images
          Row(
            children:
            image.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, dynamic context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: darkMode ? TColors.darkGrey: TColors.light,
        margin: EdgeInsets.only(right: TSizes.sm),
        padding: EdgeInsets.all(TSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image),),
      ),
    );
  }
}
