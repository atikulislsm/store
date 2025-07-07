import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class ProductQuantityAddRemoved extends StatelessWidget {
  const ProductQuantityAddRemoved({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcons(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: darkMode? TColors.white: TColors.black,
          backgroundColor: darkMode? TColors.darkerGrey: TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2', style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        TCircularIcons(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
