import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utility.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground=true,
    this.showBorder=true, this.onTap, 
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems) ,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final  dark=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: showBackground ? dark? TColors.dark: TColors.light: Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey): null
          ),
          child: Row(
            children: [
              Icon(Iconsax.search_status, color: TColors.darkGrey,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(text,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: dark? TColors.white: TColors.black),)
            ],
          ),
        ),
      ),
    );
  }
}