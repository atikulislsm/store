import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:store/common/widgets/images/t_circular_image.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Atik's Dev",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('atik.islam.atik1971@gmail.com',
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(
          onPressed: onPressed, icon: Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}