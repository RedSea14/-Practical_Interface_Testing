import 'package:apptest/models/category_model.dart';
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
            image: DecorationImage(
              image: AssetImage(
                category.imgUrl,
              ),
              fit: BoxFit.fill,
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
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}
