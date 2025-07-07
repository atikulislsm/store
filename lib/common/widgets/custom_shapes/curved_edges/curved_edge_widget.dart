import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,  required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomCurvedEdge(),
        child: child
    );
  }
}