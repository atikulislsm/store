import 'package:flutter/material.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/brand_card/brand_show_case.dart';
import 'package:store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: EdgeInsets.all(TSizes.spaceBtwItems),
            child: Column(
              children: [
                BrandShowcase(image: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ]),

                const SizedBox(height: TSizes.spaceBtwItems,),

                BrandShowcase(image: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ]),

                /// Products
                SectionHeading(title: 'You might like', onPressed: (){},),
                const SizedBox(height: TSizes.spaceBtwItems,),

                GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index)=> ProductCardVertical()
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
              ],
            ),

        ),
      ],
    );
  }
}
