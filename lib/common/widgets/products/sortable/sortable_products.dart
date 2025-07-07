import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:store/utils/constants/sizes.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          items: [
            'Name','Higher Price', 'Lower Price', 'Sale', 'Newest', 'Populrity'
          ].map((option)=> DropdownMenuItem(
              value: option,
              child: Text(option))).toList() ,
          onChanged: (value){},
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        ///Products
        GridLayout(itemCount: 6,
            itemBuilder: (_,index)=>ProductCardVertical())

      ],
    );
  }
}
