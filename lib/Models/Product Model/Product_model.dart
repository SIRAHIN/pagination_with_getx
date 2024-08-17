import 'package:pagination_with_flutter/Models/Product%20Model/Product_list_data.dart';

class ProductModel {
  int? totalSize;
  int? limit;
  int? offset;
  List<ProductsListData>? productsListData;

  ProductModel({this.totalSize, this.limit, this.offset, this.productsListData});

  ProductModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['products'] != null) {
      productsListData = <ProductsListData>[];
      json['products'].forEach((v) {
        productsListData!.add(ProductsListData.fromJson(v));
      });
    }
  }

 
}








