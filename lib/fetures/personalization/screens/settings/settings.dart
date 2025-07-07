import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/personalization/screens/address/address_screen.dart';
import 'package:store/fetures/personalization/screens/profile/profiel_screen.dart';
import 'package:store/fetures/shop/screens/cart/cart_screen.dart';
import 'package:store/fetures/shop/screens/order/order_screen.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///Header
          PrimaryHeaderContainer(
              child: Column(
            children: [
              /// AppBar
              TAppBar(
                title: Text(
                    'Accounts',
                  style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
                ),

              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
             /// userProfile
              UserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen()),),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          )
          ),
          /// Body
          Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Section Header
                SectionHeading(title: 'Account Settings', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                SettingsMenuTile(
                  onTap: () => Get.to(() => AddressScreen()),
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping Delivery address'
                ),
                SettingsMenuTile(
                  onTap: () => Get.to(() => CartScreen()),
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove product and save'
                ),
                SettingsMenuTile(
                  onTap: () => Get.to(() => OrderScreen()),
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-Progress and Completed Orders'
                ),
                SettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account'),
                SettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons'),
                SettingsMenuTile(icon: Iconsax.notification, title: ' Notification', subtitle: 'Set any ind of Notification'),
                SettingsMenuTile(icon: Iconsax.security_card, title: ' Account Privacy', subtitle: 'Manage data usage and connected accounts'),
                
                /// --AppSettings
                SizedBox(height: TSizes.spaceBtwSections,),
                SectionHeading(title: 'App Settings', showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),
                SettingsMenuTile(icon: Iconsax.data, title: 'Load data', subtitle: 'Upload data to your cloud firestore'),
                SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recomandation based on location',
                  trailing: Switch(value: true, onChanged: (value){}),
                ),
                SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: true, onChanged: (value){}),
                ),
                SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image Quality',
                    subtitle: 'Set Image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value){})
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}


