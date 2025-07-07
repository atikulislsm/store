import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor=TColors.white,
    this.onTap,
    this.backgroundColor=TColors.white,
  });
  final String title, image;
  final Color textColor;
  final void Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height:56,
              width:56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (darkMode? TColors.black:TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(image: AssetImage(image),
                      fit: BoxFit.cover,
                      color: darkMode ? TColors.light :TColors.dark
                  )
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

            )
          ],
        ),
      ),
    );
  }
}
