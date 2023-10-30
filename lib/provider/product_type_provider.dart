import 'package:apptest/data/my_data.dart';
import 'package:apptest/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductTypeProvider extends ChangeNotifier {
  int selectedTypeId = 0;
  List<ProductModel> listData = homeProductData;
  void selectProductType(int productTypeId) {
    selectedTypeId = productTypeId;
    if (selectedTypeId == 0) {
      listData = homeProductData;
    } else {
      listData = homeProductData
          .where((product) => product.categoryId == selectedTypeId)
          .toList();
    }

    notifyListeners();
  }
}
