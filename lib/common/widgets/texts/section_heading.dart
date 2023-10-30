import 'package:apptest/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.color = TColors.black,
  });
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headlineSmall!.apply(
            color: color,
            fontWeightDelta: 1,
          ),
    );
  }
}
