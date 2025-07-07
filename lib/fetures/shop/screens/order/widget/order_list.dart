import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TOrderList extends StatelessWidget {
  const TOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__)=> SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index) => RoundedContainer(
        padding: EdgeInsets.all(TSizes.md),
        isShowBorder: true,
        backgroundColor: darkMode? TColors.dark: TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                /// 1- icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems/2,),

                /// 2- status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta:1 ),),
                      Text('01 Nov 2025', style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                    size: TSizes.iconSm,
                    )
                )
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwItems,),
            /// second Row
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1- icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems/2,),

                      /// 2- status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.bodyLarge),
                            Text('#23456', style: Theme.of(context).textTheme.headlineSmall,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1- icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems/2,),

                      /// 2- status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shopping Date', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta:1 ),),
                            Text('#23456', style: Theme.of(context).textTheme.headlineSmall,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
