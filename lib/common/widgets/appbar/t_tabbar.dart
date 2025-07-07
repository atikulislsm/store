import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/device/device_utility.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TTabbar extends StatelessWidget implements PreferredSizeWidget {
  const TTabbar({
    super.key,
    required this.tabs});
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final darkMorde=THelperFunctions.isDarkMode(context);
    return Material(
      child: TabBar(
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          labelColor: darkMorde ? TColors.white: TColors.primary,
         tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
