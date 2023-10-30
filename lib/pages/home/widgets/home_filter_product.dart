import 'package:apptest/common/widgets/texts/section_heading.dart';
import 'package:apptest/data/my_data.dart';
import 'package:apptest/pages/home/widgets/product_item.dart';
import 'package:apptest/provider/product_type_provider.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeProductFilter extends StatelessWidget {
  const HomeProductFilter({
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
          SizedBox(
            height: getHeight(context) * 0.02,
          ),
          const SectionHeading(
            title: 'SẢN PHẨM DÀNH CHO BẠN',
          ),
          SizedBox(
            height: getHeight(context) * 0.03,
          ),
          SizedBox(
            height: getHeight(context) * 0.05,
            child: Consumer<ProductTypeProvider>(
              builder: (context, value, child) {
                return ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.read<ProductTypeProvider>().selectProductType(
                            homeTypeProduct[index].productTypeId);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                            color: homeTypeProduct[index].productTypeId ==
                                    value.selectedTypeId
                                ? TColors.primary
                                : TColors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: TColors.grey,
                            )),
                        child: Center(
                          child: Text(
                            homeTypeProduct[index].nameType,
                            style: TextStyle(
                              color: homeTypeProduct[index].productTypeId ==
                                      value.selectedTypeId
                                  ? TColors.white
                                  : TColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: getWidth(context) * 0.015,
                    );
                  },
                  itemCount: homeTypeProduct.length,
                );
              },
            ),
          ),
          SizedBox(
            height: getHeight(context) * 0.02,
          ),
          Consumer<ProductTypeProvider>(
            builder: (context, value, child) {
              return GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 5,
                  childAspectRatio: 3 / 5.8,
                ),
                itemCount: value.listData.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    product: value.listData[index],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
