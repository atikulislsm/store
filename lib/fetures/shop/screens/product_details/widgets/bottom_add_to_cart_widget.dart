import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class BottomAddToCartWidget extends StatelessWidget {
  const BottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, 
          vertical: TSizes.defaultSpace/2
      ),
      decoration: BoxDecoration(
        color: darkMode? TColors.grey: TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.defaultSpace),
          topRight: Radius.circular(TSizes.defaultSpace),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// + , text and - icon with circular
          Row(
            children: [
              const TCircularIcons(
                  icon:Iconsax.minus, 
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text('2', style: Theme.of(context).textTheme.titleSmall!.apply(color: darkMode? TColors.dark: TColors.white),),
              const SizedBox(width: TSizes.spaceBtwItems,),
              const TCircularIcons(
                icon:Iconsax.add,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),
          /// Add cart button
          ElevatedButton(
              onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black)
            ),
              child: const  Text('Add To Cart'),
          )
        ],
       
      ),

    );
  }
}
