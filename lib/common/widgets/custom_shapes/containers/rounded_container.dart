import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius=TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor= TColors.white,
    this.margin,
    this.borderColor= TColors.borderPrimary,
    this.isShowBorder=false,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final bool isShowBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
        border: isShowBorder ? Border.all(color: borderColor): null,
      ),
      child: child,
    );
  }
}
