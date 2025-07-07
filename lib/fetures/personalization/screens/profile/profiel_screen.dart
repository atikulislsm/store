import 'package:flutter/material.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/images/t_circular_image.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/personalization/screens/profile/widget/profile_menue.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
         /// Profile Picture
          child: Column(
            children: [
              SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  TCircularImage(image: TImages.user, width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(title: 'Profile information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems),

              ProfileMneu(onPressed: () {  }, title: 'Name',value: 'Connect With Atiks Dev'),
              ProfileMneu(onPressed: () {  }, title: 'UserName',value: 'Connect With Atiks Dev'),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const SectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ProfileMneu(onPressed: () {  }, title: 'User ID',value: '1001', icon: Icons.copy,),
              ProfileMneu(onPressed: () {  }, title: 'E-Mail',value: 'atikul.islam.atik1971@gmail.com'),
              ProfileMneu(onPressed: () {  }, title: 'Phone',value: '+9901795628757'),
              ProfileMneu(onPressed: () {  }, title: 'Gender',value: 'Male'),
              ProfileMneu(onPressed: () {  }, title: 'Date of Birth',value: ' 31 Dec 1998'),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


