import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pagination_with_flutter/Models/Product%20Model/Product_list_data.dart';
import 'package:pagination_with_flutter/Models/Product%20Model/Product_model.dart';
import 'package:pagination_with_flutter/Service/network_caller.dart';

class HomeController extends GetxController {
  final RxBool _isLoading = false.obs;

  RxBool get isLoading => _isLoading;

  ProductModel _productModel = ProductModel();

  ProductModel get productModelClass => _productModel;

  List productDataList = <ProductsListData>[].obs;

  var hasMore = true.obs;
  var offsetNumber = 0.obs;
  final int limit = 10;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  @override
  onInit() {
    getProductData(initalLoding: true);
    _scrollController.addListener(() async {
      if (_scrollController.position.maxScrollExtent ==
          _scrollController.offset) {
        await getProductData(initalLoding: false);
      }
    });
    super.onInit();
  }

  Future<void> getProductData({bool? initalLoding}) async {
    try {
      if (initalLoding!) {
        _isLoading(true);
      }

      final response = await NetworkCaller().getRequest(
          'https://app.shukhimart.com.bd/api/v1/products/latest/?limit=$limit&offset=${offsetNumber.value}');

      if (response!.statusCode == 200) {
        final jsonData = jsonDecode(response.body);

        // set value into Product model class //
        _productModel = ProductModel.fromJson(jsonData);

        // hold up the api resopnse data list into a new List variable //
        var newDataList = _productModel.productsListData ?? [];

        // Checking  if the hold up list match the condition ; go ---> if statement //
        if (newDataList != [] &&
            newDataList.isNotEmpty &&
            (newDataList.length <= _productModel.limit!)) {
          // after getting the new prodect increase the offset value;
          offsetNumber.value++;

          // after that added the hold up list data assign into the variable model list data //
          productDataList.addAll(newDataList);
        } else {
          // of else there is no data left //
          hasMore(false);
        }
      }
    } catch (ex) {
      print(ex.toString());
    } finally {
      _isLoading(false);
    }
  }
}
