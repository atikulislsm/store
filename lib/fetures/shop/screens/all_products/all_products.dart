import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/products/sortable/sortable_products.dart';
import 'package:store/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('popular'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child:Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}

