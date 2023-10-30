import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/images.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.onPressed,
    required this.locationLabel,
  });
  final Function() onPressed;
  final String locationLabel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.location,
              color: TColors.white,
            ),
            SizedBox(
              width: getWidth(context) * 0.01,
            ),
            Text(
              locationLabel,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.white),
            ),
          ],
        ),
        SizedBox(
          width: getWidth(context) * 0.035,
        ),
        SvgPicture.asset(
          TImages.AppLogoSVG,
        ),
        Expanded(child: Container()),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: -5, end: -5),
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.transparent,
          ),
          badgeContent: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: TColors.green,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1.5,
              ),
            ),
          ),
          child: InkWell(
            onTap: onPressed,
            child: const Icon(
              Iconsax.notification,
              color: TColors.white,
              size: 28,
            ),
          ),
        )
      ],
    );
  }
}
