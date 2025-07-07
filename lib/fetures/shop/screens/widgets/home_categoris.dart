
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/image_text_widget/vertical_image_text_widget.dart';
import 'package:store/fetures/shop/screens/sub_catagory/sub_catagories.dart';
import 'package:store/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){
              return VerticalImageText(
                title: 'Shoes',
                image: TImages.shoeIcon,
                onTap: () =>Get.to(()=> SubCatagories()),
              );
            })
    );
  }
}

