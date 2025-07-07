import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/style/shadow.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/common/widgets/images/rounded_images.dart';
import 'package:store/common/widgets/texts/product_price_text.dart';
import 'package:store/common/widgets/texts/product_title_text.dart';
import 'package:store/common/widgets/texts/verified_icon_with_brand_title.dart';
import 'package:store/fetures/shop/screens/product_details/product_details.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode= THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetails()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadow.verticalProductsShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: darkMode ? TColors.darkGrey :TColors.white,
        ),
        child: Column(
          children: [
            /// thumbnail, wishlist button, Discount tag
            RoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: darkMode? TColors.dark: TColors.white,
              child: Stack(
                children: [
                  /// Thumbnail
                  const RoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),

                  /// sole Tag
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
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),

            ///Details
            Padding(
                padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'Green Nike air shoes', isSmallSizes: true,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  VerifiedIconWithBrandTitle(title: 'nike'),

                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// price
                const ProductPriceText(price: '35.5'),
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
    );
  }
}

