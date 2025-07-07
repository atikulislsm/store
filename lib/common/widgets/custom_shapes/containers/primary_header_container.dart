import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:store/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(child:
    Container(
      color: TColors.primary,
      child: Stack(
        children: [
          Positioned(
            top:-150,
            right: -250 ,
            child: CircularContainer(
              width: 400,
              height: 400,
              radius: 400,
              padding: 0,
              backgroundColor: TColors.textWhite.withOpacity(0.1),
            ),
          ),
          Positioned(
            top: 100,
            right:  -300,
            child: CircularContainer(
              width: 400,
              height: 400,
              radius: 400,
              padding: 0,
              backgroundColor: TColors.textWhite.withOpacity(0.1),
            ),
          ),
          child
        ],
      ),
    ),
    );
  }
}