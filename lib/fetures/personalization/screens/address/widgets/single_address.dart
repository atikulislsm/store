import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress
  });
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      isShowBorder: true,
      backgroundColor: selectedAddress? TColors.primary.withOpacity(0.5): Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent: darkMode? TColors.darkerGrey: TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress? Iconsax.tick_circle: null,
            color: selectedAddress ? darkMode? TColors.light: TColors.dark: null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Atik',
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm/2,),
              const Text('01795628757', maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm/2,),
              const Text(
                  'Doulatpur, Belkuchi, Sirajganj, Rajshai, Bangladesh',
                softWrap: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
