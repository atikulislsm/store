import 'package:flutter/material.dart';
import 'package:store/fetures/shop/screens/product_reviews/widget/progress_indicator_and_rating.dart';

class OverAllProductRating extends StatelessWidget {
  const OverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(text: '5', value: 0.5,),
              RatingProgressIndicator(text: '4', value: 0.4,),
              RatingProgressIndicator(text: '3', value: 0.3,),
              RatingProgressIndicator(text: '2', value: 0.2,),
              RatingProgressIndicator(text: '1', value: 0.1,),
            ],
          ),
        )
      ],
    );
  }
}
