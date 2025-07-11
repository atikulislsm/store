import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TCircularIcons extends StatelessWidget {
  const TCircularIcons({super.key,
    this.width,
    this.height,
    this.size= TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null ?backgroundColor! : darkMode ? TColors.dark.withOpacity(0.9): TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),

    );
  }
}
