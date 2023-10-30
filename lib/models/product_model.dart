// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String imgUrl;
  String name;
  bool isSock;
  bool isNew;
  bool installment; //trả góp
  bool freeShip;
  double rating;
  String comment;
  String price;
  String oldPrice;
  String discount;
  int categoryId;

  ProductModel({
    required this.imgUrl,
    required this.name,
    this.isSock = false,
    this.isNew = false,
    this.installment = false,
    this.freeShip = false,
    required this.rating,
    required this.comment,
    required this.price,
    this.oldPrice = '',
    this.discount = '',
    required this.categoryId,
  });
}
