import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.onPressed,
    this.showActionButton=false,
    required this.title,
    this.buttonTitle='view all',
  });

  final Color? textColor;
  final void Function()? onPressed;
  final bool showActionButton;
  final String title, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
    if(showActionButton) TextButton(onPressed: onPressed, child:  Text(buttonTitle),),
      ],
    );
  }
}