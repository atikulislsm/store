import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/widget_login_signup/form_divider.dart';
import 'package:store/common/widgets/widget_login_signup/social_button.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';
import 'widget/signup_form.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Tittle
                Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                //Form
                SignUpForm(),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Divider
                TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Social Button
               const SocialButton()
              ],
            )
        ),

      ),
    );
  }
}


