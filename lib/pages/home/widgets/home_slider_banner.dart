import 'package:apptest/common/widgets/images/rounded_image.dart';
import 'package:apptest/provider/carousel_slider_provider.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeSliderBanner extends StatelessWidget {
  const HomeSliderBanner({
    super.key,
    required this.homeBannerData,
  });
  final List<String> homeBannerData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizonCustom(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: List.generate(
              homeBannerData.length,
              (index) => RoundedImage(
                imgUrl: homeBannerData[index],
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                context.read<CarouselProvider>().setCurrentIndex(index);
              },
              height: getHeight(context) * 0.17,
              viewportFraction: 1,
            ),
          ),
          SizedBox(
            height: getHeight(context) * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              homeBannerData.length,
              (index) => Consumer<CarouselProvider>(
                builder: (context, value, child) {
                  return value.currentIndex == index
                      ? Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: TColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: TColors.white,
                                    width: 1,
                                  )),
                            ),
                          ),
                        )
                      : Container(
                          width: 7,
                          height: 7,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: TColors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
