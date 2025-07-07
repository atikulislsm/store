import 'package:flutter/material.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(showActionButton: true,title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('Atiks dev', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('+8801795628757', style: Theme.of(context).textTheme.bodyMedium, ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('doulatpur,belkuchi, sirajganj, dhaka', style: Theme.of(context).textTheme.bodyMedium,softWrap: true, )),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

      ],
    );
  }
}
