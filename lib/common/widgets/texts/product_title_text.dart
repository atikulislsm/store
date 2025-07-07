import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.isSmallSizes=false,
    this.maxLine=2,
    this.textAlign=TextAlign.left
  });
final String title;
final bool isSmallSizes;
final int maxLine;
final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isSmallSizes ? Theme.of(context).textTheme.labelLarge: Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLine,
    );
  }
}
