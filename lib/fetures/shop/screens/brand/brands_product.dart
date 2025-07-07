import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/products/brand_card/t_brand_card.dart';
import 'package:store/common/widgets/products/sortable/sortable_products.dart';
import 'package:store/utils/constants/sizes.dart';

class BrandsProduct extends StatelessWidget {
  const BrandsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections,),
              SortableProducts(),
            ],
          ),

        ),
      ),
    );
  }
}
