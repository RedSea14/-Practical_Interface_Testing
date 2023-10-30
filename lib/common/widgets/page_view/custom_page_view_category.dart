import 'package:apptest/pages/home/widgets/category_item.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class MyCustomCategoryPageView extends StatefulWidget {
  const MyCustomCategoryPageView(
      {Key? key,
      required this.data,
      required this.itemCountPerPage,
      required this.pageViewHeight})
      : super(key: key);
  final List<dynamic> data;
  final int itemCountPerPage;
  final double pageViewHeight;
  @override
  // ignore: library_private_types_in_public_api
  _MyCustomCategoryPageViewState createState() =>
      _MyCustomCategoryPageViewState();
}

class _MyCustomCategoryPageViewState extends State<MyCustomCategoryPageView> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var itemCountPerPage = widget.itemCountPerPage;
    final totalPageCount = (widget.data.length / itemCountPerPage).ceil();

    return Column(
      children: [
        SizedBox(
          height: getHeight(context) * widget.pageViewHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: totalPageCount,
            itemBuilder: (context, page) {
              final startIndex = page * itemCountPerPage;
              final endIndex =
                  (startIndex + itemCountPerPage) < widget.data.length
                      ? (startIndex + itemCountPerPage)
                      : widget.data.length;
              final pageData = widget.data.sublist(startIndex, endIndex);

              return CategoryListView(
                data: pageData,
              );
            },
          ),
        ),
        buildDots(totalPageCount, currentPage),
      ],
    );
  }

  Widget buildDots(int pageCount, int currentIndex) {
    List<Widget> dots = [];
    for (int i = 0; i < pageCount; i++) {
      dots.add(Container(
        width: getWidth(context) * 0.04,
        height: getHeight(context) * 0.005,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
          color: i == currentIndex ? Colors.pink : Colors.grey.withOpacity(0.1),
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }
}

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
    required this.data,
  }) : super(key: key);
  final List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return CategoryItem(category: data[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          width: getWidth(context) * 0.03,
        );
      },
    );
  }
}
