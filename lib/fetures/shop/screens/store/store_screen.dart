import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/appbar/appbar.dart';
import 'package:store/common/widgets/appbar/t_tabbar.dart';
import 'package:store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:store/common/widgets/layouts/grid_layout.dart';
import 'package:store/common/widgets/products/brand_card/t_brand_card.dart';
import 'package:store/common/widgets/products/cart/cart_menue_icon.dart';
import 'package:store/common/widgets/texts/section_heading.dart';
import 'package:store/fetures/shop/screens/brand/all_brand.dart';
import 'package:store/fetures/shop/screens/store/widgets/category_tab.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// Appbar Tutorial section #3, video #7
        appBar: TAppBar(
          title: Text('Store'),
          action: [
            CartCounterIcon(onPressed: (){})
          ],
        ),
        body: NestedScrollView(
          /// Header Tutorial
            headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: darkMode ? TColors.black: TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// Searchbar
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    SearchContainer(
                      text: 'Search in here',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    /// --- Fetured Brands
                    SectionHeading(
                      title: 'Featured Brands',
                       onPressed: ()=> Get.to(()=> AllBrandScreen()), showActionButton: true,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems/1.5,),
                    GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index){
                      return TBrandCard( showBorder: false,);
                    })
                  ],
                ),
              ),
              /// tabs --tutorial section #3, video #8
              bottom: TTabbar(tabs: [
                Tab(child: Text('Sports'),),
                Tab(child: Text('Furniture'),),
                Tab(child: Text('Electronics'),),
                Tab(child: Text('Cloths'),),
                Tab(child: Text('Cosmetics'),),
              ])
            )
          ];
        },
            /// body --Tutorial section #3, video #8
            body: TabBarView(
                children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),

            ])
        ),
      ),
    );
  }
}





