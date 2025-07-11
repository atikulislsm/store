import 'package:flutter/material.dart';
import 'package:store/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backGroundColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadius =TSizes.md
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            color: backGroundColor, border: border,
            borderRadius: BorderRadius.circular(TSizes.md)
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius? BorderRadius.circular(borderRadius): BorderRadius.zero,
            child: Image(image: isNetworkImage? NetworkImage(imageUrl): AssetImage(imageUrl) as ImageProvider,
              fit: BoxFit.contain,)
        ),
      ),
    );
  }
}