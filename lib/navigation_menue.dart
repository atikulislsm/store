import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/fetures/personalization/screens/settings/settings.dart';
import 'package:store/fetures/shop/screens/home.dart';
import 'package:store/fetures/shop/screens/store/store_screen.dart';
import 'package:store/fetures/shop/screens/wishlist/wishlist_screen.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class NavigationMenue extends StatelessWidget {
  const NavigationMenue({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationControlelr());
    final darkMode= THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 88,
          elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value=index,
            backgroundColor: darkMode? TColors.black: Colors.white,
            indicatorColor: darkMode? TColors.black :Colors.white,
            destinations: [
          NavigationDestination(icon: Icon(Iconsax.home,),label: 'Home',),
          NavigationDestination(icon: Icon(Iconsax.shop,),label: 'Shop',),
          NavigationDestination(icon: Icon(Iconsax.heart,),label: 'Wishlist',),
          NavigationDestination(icon: Icon(Iconsax.user,),label: 'User',),
        ]),
      ),
      body: Obx(()=> Container(child: controller.screen[controller.selectedIndex.value],)),
    );
  }
}
class NavigationControlelr extends GetxController{
  final Rx<int> selectedIndex =0.obs;

  final screen=[
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    SettingsScreen(),
  ];
}
