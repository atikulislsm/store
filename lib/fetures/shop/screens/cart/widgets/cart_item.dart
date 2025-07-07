import 'package:flutter/material.dart';
import 'package:store/common/widgets/products/cart/add_remove_button.dart';
import 'package:store/common/widgets/products/cart/cart_item.dart';
import 'package:store/common/widgets/texts/product_price_text.dart';
import 'package:store/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,  this.showAddRemoveButtons=true,
  });
 final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __)=> const SizedBox(height: TSizes.spaceBtwSections,),
      itemCount: 2,
      itemBuilder: (_,__)=> Column(
        children: [
          TCartItem(),
          if(showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems,),
          /// add & remove cart items

          if(showAddRemoveButtons)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 70,),
                  ProductQuantityAddRemoved(),
                ],
              ),
              ProductPriceText(price: '256',),
            ],
          )
        ],
      ),
    );
  }
}
