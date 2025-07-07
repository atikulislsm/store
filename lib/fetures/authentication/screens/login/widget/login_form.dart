import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/fetures/authentication/screens/password_configuration/forgot_password.dart';
import 'package:store/fetures/authentication/screens/signup/signup.dart';
import 'package:store/navigation_menue.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields/2,),

            // Remember & Forgot password( Form Section)

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),

                  ],
                ),

                // Forgot password
                TextButton(
                  onPressed: () => Get.to(() => ForgotPassword()),
                  child: Text(TTexts.forgetPassword),)
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections,),

            // Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=> NavigationMenue());
                    },
                    child: Text(TTexts.signIn)
                )
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () =>
                      Get.to(() => Signup()),
                    child: Text(TTexts.createAccount)
                )
            ),
          ],
        ),
      ),
    );
  }
}