import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart' show Iconsax;
import 'package:store/fetures/authentication/screens/signup/widget/terms_condition.dart';
import 'package:store/fetures/authentication/screens/signup/widget/verify_email.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          // username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          //email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          //phone number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          //password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          //Terms & Condition Section
          TermsCondition(),
          const SizedBox(height: TSizes.spaceBtwSections,),

          //Sign up
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.to(() =>VerifyEmail()),
                child: Text(TTexts.createAccount)
            ),
          )
        ],
      ),
    );
  }
}

