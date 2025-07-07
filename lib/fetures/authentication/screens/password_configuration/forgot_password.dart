import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/fetures/authentication/screens/password_configuration/reset_password.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
          children: [
            // Heading
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections *2,),

            //TextFields
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections *2,),

            //Submit Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to((ResetPassword())), child: Text(TTexts.submit)))

          ],
      ),
      ),
    );
  }
}
