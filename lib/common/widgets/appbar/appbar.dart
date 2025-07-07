import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({super.key, this.title,  this.showBackArrow=false, this.leadingIcon,  this.action, this.leadingOnPressed});
 final Widget? title;
 final bool showBackArrow;
 final IconData? leadingIcon;
 final List<Widget>? action;
 final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return AppBar(
        automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back, color:darkMode? TColors.white: TColors.dark ,))
              :  leadingIcon != null ? IconButton(
              onPressed: () => leadingOnPressed, icon: Icon(leadingIcon)): null,
        title: title,
        actions: action,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

}