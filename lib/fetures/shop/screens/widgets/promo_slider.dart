
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:store/common/widgets/images/rounded_images.dart';
import 'package:store/fetures/shop/controllers/home_controller.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });
final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index, _) => controller.carousalCurrentIndex(index),
          ),
         items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        SizedBox( height: TSizes.defaultSpace,),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0; i<=banners.length; i++)
                  CircularContainer(
                      height: 4,
                      width: 20,
                      margin: EdgeInsets.only(right: 18),
                      padding: TSizes.defaultSpace,
                      backgroundColor: controller.carousalCurrentIndex.value ==i ? TColors.primary: TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}