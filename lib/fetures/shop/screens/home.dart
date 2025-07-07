import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/shop/screens/all_products/all_products.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/home_categoris.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Custom ClipPath Design header (Tutorial section-3 #video #2)
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar (Tutorial section-3 #video #3)
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///SearchBar ((Tutorial section-3 #video #4)
                  SearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  /// Categories (Tutorial section-3 #video #4)

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///heading
                        SectionHeading(
                          title: 'Product Categories',
                          buttonTitle: 'View All',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        ///categories
                        HomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              )
            ),
            /// Body Section --Tutorial [section #3, Video#5)--
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Promo Slider  --Tutorial [section #4, video #6
                    PromoSlider(banners: [
                      TImages.promoBanner3,
                      TImages.promoBanner1,
                      TImages.promoBanner2
                    ]),

                    /// Popular Product --Tutorial [section #3, Video#7
                    SectionHeading(title: 'Popular Products',showActionButton: true, onPressed: ()=> Get.to(()=> AllProductsScreen()),),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    GridLayout(itemCount: 4, itemBuilder: (_, index)=> ProductCardVertical(),)
                  ],
                ),
            )
          ],
        ),

      ),
    );
  }
}



















