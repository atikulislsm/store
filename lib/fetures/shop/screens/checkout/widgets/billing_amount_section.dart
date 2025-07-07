import 'package:flutter/material.dart';
import 'package:store/utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Subtotal
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
          Text('\$256', style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        /// Shipping rate
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Rate', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        /// Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
      ],
    );
  }
}
