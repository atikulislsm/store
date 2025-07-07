import 'package:flutter/material.dart';
import 'package:store/utils/constants/sizes.dart';

class ProfileMneu extends StatelessWidget {
  const ProfileMneu({
    super.key,
    required this.onPressed,
    this.icon=Icons.arrow_forward_ios_outlined,
    required this.title,
    required this.value,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems/1.5),
        child: Row(
          children: [
            Expanded(flex: 3,child: Text(title, style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
            Expanded(flex: 5,child: Text(value, style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(icon, size: 18,)),
          ],
        ),
      ),
    );
  }
}