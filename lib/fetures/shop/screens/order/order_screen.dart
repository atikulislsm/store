import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/fetures/shop/screens/order/widget/order_list.dart';
import 'package:store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('My Orders', style: Theme.of(context).textTheme.headlineMedium,)),
      body: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TOrderList(),
      ),
    );
  }
}
