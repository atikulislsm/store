import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/products/rating/rating_indicator.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class UserReviewsCard extends StatelessWidget {
  const UserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage2),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('Atik', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            TRatingBarIndicator(rating: 4.0),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text('01 Nov 2025',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText(
            'The user interface of the app is quite intiative, i was able to navigate and make purchase seamlessly, Great job',
          trimCollapsedText: 'show more',
          trimExpandedText: ' less',
          trimLines: 2,
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const  SizedBox(height: TSizes.spaceBtwItems,),

        /// Company Review
        RoundedContainer(
          backgroundColor: darkMode? TColors.darkerGrey: TColors.grey,
          child: Padding(
              padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Atiks dev store',style: Theme.of(context).textTheme.titleMedium ),
                    Text('02 July 2025',style: Theme.of(context).textTheme.bodyMedium ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ReadMoreText(
                  'The user interface of the app is quite intiative, i was able to navigate and make purchase seamlessly, Great job',
                  trimCollapsedText: 'show more',
                  trimExpandedText: ' less',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
         const SizedBox(height: TSizes.spaceBtwSections,)
      ],

    );
  }
}
