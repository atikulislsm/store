import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/icon/t_circular_icon.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:store/fetures/shop/screens/home.dart';
import 'package:store/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCircularIcons(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
