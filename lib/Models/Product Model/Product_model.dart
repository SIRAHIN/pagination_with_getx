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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (productsListData != null) {
      data['products'] = productsListData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}








