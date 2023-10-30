import 'package:apptest/models/category_model.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({
    super.key,
    required this.category,
  });

  CategoryModels category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: getWidth(context) * 0.18,
          height: getHeight(context) * 0.08,
          decoration: BoxDecoration(
            color: TColors.grey.withOpacity(0.3),
            border: Border.all(
              color: TColors.primary.withOpacity(0.5),
              width: 0.8,
            ),
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(8),
              bottomStart: Radius.circular(8),
              topStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Image.asset(
              category.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: getWidth(context) * 0.2,
          height: getHeight(context) * 0.07,
          child: Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
