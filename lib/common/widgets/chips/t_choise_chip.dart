import 'package:flutter/material.dart';
import 'package:store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/helpers/helper_functions.dart';

class TChoiseChip extends StatelessWidget {
  const TChoiseChip({
    super.key,
    required this.labelText,
    required this.selected,
    this.onSelected,
  });

  final String labelText;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor=THelperFunctions.getColor(labelText) !=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor? SizedBox() : Text(labelText),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected? TColors.white: null),
        avatar: isColor? CircularContainer(width: 50,height: 50, backgroundColor: THelperFunctions.getColor(labelText)!,): null,
        shape: isColor? CircleBorder(): null,
        labelPadding: isColor? EdgeInsets.all(0):null,
        padding: isColor? EdgeInsets.all(0): null,
        selectedColor: Colors.green,
        backgroundColor: isColor ? THelperFunctions.getColor(labelText)!: null,
      ),
    );
  }
}