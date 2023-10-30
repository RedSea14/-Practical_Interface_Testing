import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class CustomSpace extends StatelessWidget {
  const CustomSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context),
      height: getHeight(context) * 0.015,
      decoration: BoxDecoration(
        color: TColors.grey.withOpacity(0.5),
      ),
    );
  }
}
