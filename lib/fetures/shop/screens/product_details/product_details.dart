import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:store/fetures/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:store/fetures/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:store/fetures/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:store/fetures/shop/screens/product_details/widgets/rating_and_share_widget.dart';
import 'package:store/fetures/shop/screens/product_reviews/product_reviews.dart';
import 'package:store/utils/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product Image slider
            ProductImageSlider(),

            /// Product Details
            Padding(
              padding: EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
              child: Column(
                children: [
                  /// Rating & share Button
                  RatingAndShare(),

                  /// Price,Title, Stock & Brand
                  ProductMetaData(),

                  /// Attributes
                  ProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  /// ---Checkout Button

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),
                  ),
                  /// --- Description

                  SectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  ReadMoreText(
                    trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      'Hey My name is atikul Islam,, this my first ecommerce site. '
                          'I implement this app polaitly theme and unique materials. This app for use only online shopping! Generally many people are not available time  '
                  ),
                  /// --- Review
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews(199)',showActionButton: false,),
                      IconButton(onPressed: ()=> Get.to(()=> ProductReviews()), icon: Icon(Icons.arrow_forward_ios_outlined),)
                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}



