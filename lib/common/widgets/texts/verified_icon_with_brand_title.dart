import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/texts/brand_title_text.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/enums.dart';
import 'package:store/utils/constants/sizes.dart';

class VerifiedIconWithBrandTitle extends StatelessWidget {
  const VerifiedIconWithBrandTitle({
    super.key,
    required this.title,
    this.maxLine=1,
    this.textColor,
    this.iconColor= TColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTextSizes=TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
              title:title,
            color: textColor,
            maxLine: maxLine,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          )
        ),
        const SizedBox(width: TSizes.xs,),
        const Icon(Iconsax.verify, color: TColors.primary, size: TSizes.iconXs,),
      ],
    );
  }
}
