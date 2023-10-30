import 'package:apptest/common/widgets/page_view/costom_page_view_product.dart';
import 'package:apptest/common/widgets/texts/section_heading.dart';
import 'package:apptest/data/my_data.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeProductShowCase extends StatelessWidget {
  HomeProductShowCase({
    super.key,
    required this.title,
    this.color = TColors.black,
  });
  final String title;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizonCustom(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getHeight(context) * 0.02,
          ),
          SectionHeading(
            title: title,
            color: color,
          ),
          SizedBox(
            height: getHeight(context) * 0.03,
          ),
          MyCustomProductPageView(
            data: homeProductData,
            itemCountPerPage: 2,
            pageViewHeight: 0.42,
          ),
        ],
      ),
    );
  }
}
