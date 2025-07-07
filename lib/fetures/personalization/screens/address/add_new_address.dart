import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/utils/constants/sizes.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text(' Add New Address'),),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Form(child: Column(
        children: [
         TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText:'Name',)),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
         TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText:'Phone Number',)),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          Row(
            children: [
              Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_3), labelText:'Street',))),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText:'Postal Code',))),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          Row(
            children: [
              Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText:'City',))),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText:'State',))),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText:'Country',)),
          const SizedBox(height: TSizes.defaultSpace,),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
        ],
      )
      ),
      ),
    ),
    );
  }
}
