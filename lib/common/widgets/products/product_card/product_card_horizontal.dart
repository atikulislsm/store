import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/common/widgets/images/rounded_images.dart';
import 'package:store/common/widgets/texts/product_price_text.dart';
import 'package:store/common/widgets/texts/product_title_text.dart';
import 'package:store/common/widgets/texts/verified_icon_with_brand_title.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: darkMode ? TColors.darkGrey :TColors.lightContainer,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: darkMode? TColors.dark: TColors.light,
          child: Stack(
            children: [
              SizedBox(
                height:120,
                width: 120,
                child: RoundedImage(
                  imageUrl: TImages.promoBanner3,
                  applyImageRadius: true,
                ),
              ),
              /// sale tage
              Positioned(
                top: 12,
                child: RoundedContainer(
                  radius: TSizes.md,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                ),
              ),
              /// Favourite icon button
              Positioned(
                  height: 10,
                  top: 0,
                  right: 0,
                  child: TCircularIcons(icon: Iconsax.heart, color: Colors.red,)
              )
            ],
          ) ,
          ),
          /// Details
          SizedBox(
            width: 172,
            child: Padding(
                padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child:Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Gren Nike Half sleevs shirt', isSmallSizes: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),
                      VerifiedIconWithBrandTitle(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// pricing
                      Flexible(child: ProductPriceText(price: '256.8')),
                      Container(
                        decoration: BoxDecoration(
                          color:  TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                            width: TSizes.iconLg *1.2,
                            height: TSizes.iconLg *1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: TColors.white,)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
