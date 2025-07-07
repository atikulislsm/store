import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/fetures/personalization/screens/address/add_new_address.dart';
import 'package:store/fetures/personalization/screens/address/widgets/single_address.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(()=> AddNewAddress(),),
        child: Icon(Iconsax.add, color: TColors.white, ),
      ),
      appBar: TAppBar(showBackArrow: true,
        title: Text('Address', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
