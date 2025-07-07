import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/style/spacing_style.dart';
import 'package:store/common/widgets/widget_login_signup/form_divider.dart';
import 'package:store/common/widgets/widget_login_signup/social_button.dart';
import 'package:store/fetures/authentication/screens/login/widget/login_form.dart';
import 'package:store/fetures/authentication/screens/login/widget/login_header.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpaceingStyel.paddWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, subtitle ( for Header Section)
              const TLoginHeader(),

              // From Section
              const TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Social Icons
              const SocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}








