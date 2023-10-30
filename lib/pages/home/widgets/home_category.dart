import 'package:apptest/common/widgets/page_view/custom_page_view_category.dart';
import 'package:apptest/common/widgets/texts/section_heading.dart';
import 'package:apptest/data/my_data.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizonCustom(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            title: 'DANH MỤC SẢN PHẨM',
          ),
          SizedBox(
            height: getHeight(context) * 0.04,
          ),
          MyCustomCategoryPageView(
            data: homeCategoryData,
            itemCountPerPage: 4,
            pageViewHeight: 0.18,
          )
        ],
      ),
    );
  }
}
