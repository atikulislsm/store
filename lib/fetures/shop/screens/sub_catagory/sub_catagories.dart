import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/images/rounded_images.dart';
import 'package:store/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';

class SubCatagories extends StatelessWidget {
  const SubCatagories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            RoundedImage(imageUrl: TImages.promoBanner3, width: double.infinity, applyImageRadius: true,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            /// sub-categories
            Column(
              children: [
                SectionHeading(title: 'Sports', onPressed: (){},showActionButton: true,),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemBuilder: (_,index)=> ProductCardHorizontal(),
                      separatorBuilder: (_,__)=> SizedBox(width: TSizes.defaultSpace,),
                      itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            Column(
              children: [
                SectionHeading(title: 'Dress', onPressed: (){},showActionButton: true,),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      itemBuilder: (_,index)=> ProductCardHorizontal(),
                      separatorBuilder: (_,__)=> SizedBox(width: TSizes.defaultSpace,),
                      itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
