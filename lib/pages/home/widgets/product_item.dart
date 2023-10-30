import 'package:apptest/models/product_model.dart';
import 'package:apptest/utils/constants/colors.dart';
import 'package:apptest/utils/constants/size_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    super.key,
    required this.product,
  });
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context) * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: TColors.white,
      ),
      child: Column(
        children: [
          Container(
            height: getHeight(context) * 0.22,
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Center(
                    child: Image.asset(
                      product.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      product.isSock
                          ? Container(
                              width: getWidth(context) * 0.17,
                              height: getHeight(context) * 0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: TColors.primary,
                              ),
                              child: const Center(
                                child: Text(
                                  'GIÁ SỐC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: getHeight(context) * 0.005,
                      ),
                      product.isNew
                          ? Container(
                              width: getWidth(context) * 0.12,
                              height: getHeight(context) * 0.03,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: TColors.primary,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                color: TColors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  'MỚI',
                                  style: TextStyle(
                                    color: TColors.primary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: TColors.black.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                product.freeShip
                    ? Container(
                        width: getWidth(context),
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blue.withOpacity(0.1),
                        ),
                        child: const Center(
                          child: Text(
                            'Miễn phí vận chuyển',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 5,
                ),
                product.oldPrice.isEmpty
                    ? Container()
                    : Column(
                        children: [
                          Text(
                            product.oldPrice,
                            style: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                Row(
                  children: [
                    Text(
                      product.price,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: product.discount.isEmpty
                            ? Colors.black
                            : Colors.pink,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    product.discount.isEmpty
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: TColors.primary,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: TColors.white,
                            ),
                            child: const Center(
                              child: Text(
                                '-40%',
                                style: TextStyle(
                                  color: TColors.primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Góp từ 500,000đ',
                  style: TextStyle(
                    color: TColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.pink,
                        ),
                        Text(
                          product.rating.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '(${product.comment})',
                          style: TextStyle(
                            fontSize: 12,
                            color: TColors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
