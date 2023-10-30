// ignore_for_file: unrelated_type_equality_checks

import 'package:apptest/common/widgets/custom_shapes/container/custom_space_container.dart';
import 'package:apptest/data/my_data.dart';
import 'package:apptest/pages/home/widgets/home_appbar.dart';
import 'package:apptest/pages/home/widgets/home_filter_product.dart';
import 'package:apptest/pages/home/widgets/home_product_show_case.dart';
import 'package:apptest/pages/home/widgets/home_category.dart';
import 'package:apptest/pages/home/widgets/home_choice_chip.dart';
import 'package:apptest/pages/home/widgets/home_header.dart';
import 'package:apptest/pages/home/widgets/home_search_bar.dart';
import 'package:apptest/pages/home/widgets/home_slider_banner.dart';
import 'package:apptest/utils/constants/colors.dart';

import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeaderContainer(
              child: Padding(
                padding: EdgeInsets.only(
                  left: paddingHorizonCustom(context),
                  right: paddingHorizonCustom(context),
                  top: paddingVerticalCustom(context),
                ),
                child: Column(
                  children: [
                    HomeAppBar(
                      locationLabel: 'Bà Rịa- Vũng Tàu',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.025,
                    ),
                    HomeSearchBar(
                      searchLabel: 'Bạn cần tìm gì hôm nay?',
                      onTap: () {},
                    ),
                    HomeChoiceChip(
                      listData: homeChoiceChipData,
                    )
                  ],
                ),
              ),
            ),
            HomeSliderBanner(
              homeBannerData: homeBannerData,
            ),
            SizedBox(
              height: getHeight(context) * 0.05,
            ),
            const HomeCategory(),
            SizedBox(
              height: getHeight(context) * 0.02,
            ),
            const CustomSpace(),
            HomeProductShowCase(
              title: 'SẢN PHẨM BÁN CHẠY',
              color: TColors.primary,
            ),
            const CustomSpace(),
            HomeProductShowCase(
              title: 'SẢN PHẨM MỚI',
              color: TColors.primary,
            ),
            const CustomSpace(),
            HomeProductShowCase(
              title: 'SẢN PHẨM GẦN ĐÂY',
            ),
            const CustomSpace(),
            HomeProductShowCase(
              title: 'SẢN PHẨM LIÊN QUAN',
            ),
            const CustomSpace(),
            const HomeProductFilter(),
          ],
        ),
      ),
    );
  }
}
