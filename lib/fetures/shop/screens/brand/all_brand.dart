import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/brand_card/t_brand_card.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/shop/screens/brand/brands_product.dart';
import 'package:store/utils/constants/sizes.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('All Brand'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(title: 'brands'),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// Brands
              GridLayout(
                  mainAxisExtent: 80,
                  itemCount: 30,
                  itemBuilder: (_,index)=> TBrandCard(
                      showBorder: true,
                    onTap: () => Get.to(()=> BrandsProduct()),

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
