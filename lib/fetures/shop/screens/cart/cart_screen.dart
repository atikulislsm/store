import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/fetures/shop/screens/cart/widgets/cart_item.dart';
import 'package:store/fetures/shop/screens/checkout/cehckout_screen.dart';
import 'package:store/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
          title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,)),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
      child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> CehckoutScreen()), child: Text('Checkout \$256')),
      ),
    );
  }
}



