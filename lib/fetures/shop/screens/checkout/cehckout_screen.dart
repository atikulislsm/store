import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/products/cart/cupon_code_widget.dart';
import 'package:store/common/widgets/sucess_screen/t_success_screen.dart';
import 'package:store/fetures/shop/screens/cart/widgets/cart_item.dart';
import 'package:store/fetures/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:store/fetures/shop/screens/checkout/widgets/billing_payment_method.dart';
import 'package:store/fetures/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:store/navigation_menue.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CehckoutScreen extends StatelessWidget {
  const CehckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Overview', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
            children: [
              /// ---Items in cart
              CartItems(showAddRemoveButtons: false,),
              SizedBox(height: TSizes.spaceBtwSections),
              /// Cupon TextField
              const CuponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// Billing Section
              RoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                isShowBorder: true,
                backgroundColor: darkMode? TColors.black: TColors.white,
                child:Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                     /// Divider
                     const Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    /// payments Method
                    BillingPaymentMethod(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Addressing
                    BillingAddressSection(),


                  ],
                ),
              )
            ],
        ),
        ),

      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=>
            TSuccessScreen(
                image: TImages.successfulPaymentIcon,
                title: 'Payment Success',
                subtitle: ' Your Item will be shipped soon',
                onPressed: () => Get.offAll(() => const NavigationMenue()),
        ),
      ),
    child: const Text(' CheckOut \$256.8') ),
      )
    );
  }
}

