import 'package:flutter/cupertino.dart';
import 'package:store/utils/constants/sizes.dart';

class TSpaceingStyel{
  static const EdgeInsetsGeometry paddWithAppBarHeight=EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}