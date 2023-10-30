import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeChoiceChip extends StatelessWidget {
  HomeChoiceChip({
    super.key,
    required this.listData,
  });
  List<String> listData = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.075,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Chip(
            backgroundColor: TColors.primary.withOpacity(0.7),
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            label: Text(
              listData[index],
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: TColors.white,
                  ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: getWidth(context) * 0.02,
          );
        },
      ),
    );
  }
}
