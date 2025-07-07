import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store/common/widgets/images/t_circular_image.dart';
import 'package:store/common/widgets/texts/verified_icon_with_brand_title.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/enums.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        isShowBorder: showBorder,
        child: Row(
          children: [
            /// ---icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: darkMode? TColors.white: TColors.black,
                image: TImages.clothIcon,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2,),

            ///Text with verified icon
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerifiedIconWithBrandTitle(title: 'nike', brandTextSizes: TextSizes.large,),
                  Text('256 Products with the stock',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}