import 'package:flutter/material.dart';
import 'package:store/common/widgets/chips/t_choise_chip.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/texts/product_price_text.dart';
import 'package:store/common/widgets/texts/product_title_text.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: darkMode? TColors.darkerGrey: TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  SectionHeading(title: 'Variation', showActionButton: false,), 
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: 'Price',isSmallSizes: true,),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          ProductPriceText(price: '20')
                        ],
                      ),
                      /// Stock
                      Row(
                        children: [
                          ProductTitleText(title: 'Stock', isSmallSizes: true,),
                          const SizedBox(width: 10,),
                          Text('InStock: ', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  )
                ],
              ),
              ProductTitleText(
                  title: 'This is the description of the product and it can go upto max 4 line',
                maxLine: 4,
                isSmallSizes: true,

              )
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Colors'),
            SizedBox(width: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiseChip(labelText: 'Green', selected: true,onSelected: (value){},),
                TChoiseChip(labelText: 'Blue', selected: false,onSelected: (value){},),
                TChoiseChip(labelText: 'Yellow', selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Size', showActionButton: false,),
            SizedBox(width: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiseChip(labelText: 'EU 34', selected: true,onSelected: (value){},),
                TChoiseChip(labelText: 'EU 36', selected: false,onSelected: (value){},),
                TChoiseChip(labelText: 'EU 38', selected: false,onSelected: (value){},),
              ],
            ),

          ],
        )
      ],
    );
  }
}


