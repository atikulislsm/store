import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class BillingPaymentMethod extends StatelessWidget {
  const BillingPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(showActionButton: true,title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: darkMode? TColors.light: TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
