import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class CuponCode extends StatelessWidget {
  const CuponCode({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        right: TSizes.sm,
        left: TSizes.md,
      ),
      isShowBorder: true,
      backgroundColor: darkMode? TColors.dark: TColors.light,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Apply Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: darkMode? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                  ),
                  onPressed: (){}, child: Text('Apply')))
        ],
      ),
    );
  }
}
