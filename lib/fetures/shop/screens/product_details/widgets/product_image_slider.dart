import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/common/widgets/images/rounded_images.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
        child: Container(
          color: darkMode? TColors.darkGrey: TColors.light,
          child: Stack(
            children: [
              SizedBox(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(TSizes.productImageRadius *2),
                    child: Center(child: Image(image: AssetImage(TImages.productImage3),)),
                  )),
              Positioned(
                right: 0,
                bottom: 30,
                left: TSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (_, __)=> const SizedBox(width: TSizes.spaceBtwItems,),
                    itemCount: 6,
                    itemBuilder: (_, index)=> RoundedImage(
                        width: 80,
                        border: Border.all(color: TColors.primary),
                        backGroundColor: darkMode? TColors.dark: TColors.white,
                        padding: EdgeInsets.all(TSizes.sm),
                        imageUrl: TImages.productImage4
                    ),
                  ),
                ),
              ),
              /// Appbar Icons
              TAppBar(
                showBackArrow: true,
                action: [
                  TCircularIcons(icon: Iconsax.heart, color: Colors.red,)
                ],
              )

            ],
          ),
        ));
  }
}
