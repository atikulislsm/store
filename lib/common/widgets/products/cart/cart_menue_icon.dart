
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/fetures/shop/screens/cart/cart_screen.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
    this.counterBgColor,
    this.counterTextColor,
  });
  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(()=> CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor?? (darkMode? TColors.white: TColors.dark),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: darkMode? TColors.dark: TColors.white,
                    fontSizeFactor: 0.8
                ),),
            ),
          ),
        )
      ],
    );
  }
}