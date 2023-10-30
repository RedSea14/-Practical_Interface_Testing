import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.searchLabel,
    required this.onTap,
  });
  final String searchLabel;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getWidth(context),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: TColors.grey),
        ),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal_1,
              color: TColors.darkGrey,
            ),
            SizedBox(
              width: getHeight(context) * 0.02,
            ),
            Text(
              searchLabel,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: TColors.darkGrey),
            )
          ],
        ),
      ),
    );
  }
}
