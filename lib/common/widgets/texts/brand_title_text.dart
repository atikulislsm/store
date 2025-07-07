import 'package:flutter/material.dart';
import 'package:store/utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLine=1,
    this.textAlign =TextAlign.center,
    this.brandTextSizes = TextSizes.small
  });

  final String title;
  final Color? color;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,

      //check which brandSize is required and set that style

      style: brandTextSizes == TextSizes.small ?
      Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes==TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSizes==TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)


    );
  }
}
