import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/fetures/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:store/fetures/shop/screens/product_reviews/widget/user_reviews_card.dart';
import 'package:store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Reviews & Ratings',), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: TSizes.spaceBtwItems,),
            
            /// overall Product Ratings
            OverAllProductRating(),
            TRatingBarIndicator(rating: 3.5,),
            Text('12,642', style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// user reviews list
             const UserReviewsCard(),
            const UserReviewsCard(),
            const UserReviewsCard(),
          ],
        ),
      ),
    );
  }
}



