import 'dart:convert';

import 'package:get/get.dart';
import 'package:pagination_with_flutter/Models/Product%20Model/Product_list_data.dart';
import 'package:pagination_with_flutter/Models/Product%20Model/Product_model.dart';
import 'package:pagination_with_flutter/Service/network_caller.dart';

class HomeController extends GetxController {
  RxBool _isLoading = false.obs;

  RxBool get isLoading => _isLoading;

  // ProductModel _productModel = ProductModel();

  // ProductModel get productModelClass => _productModel;

  var productDataList = <ProductsListData>[].obs;

  var hasMore = true.obs;
  var offset = 0.obs;
  final int limit = 10;

  @override
  onInit() {
    getProductData();
    super.onInit();
  }

  Future<void> getProductData() async {
   productDataList.clear();
    if (!hasMore.value) return;
    _isLoading.value = true;

    try {
      final response = await NetworkCaller().getRequest(
          'https://app.shukhimart.com.bd/api/v1/products/latest/?limit=$limit&offset=${offset.value}');
      if (response?.statusCode == 200) {
        
        List<dynamic> data = jsonDecode(response!.body)['products'];
        List<ProductsListData> newPost =
            data.map((json) => ProductsListData.fromJson(json)).toList();
        if (newPost.isEmpty) {
          hasMore(false);
        } else {
          productDataList.addAll(newPost);
          offset.value += limit;
        }
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (exception) {
      print(exception);
    } finally {
      isLoading(false);
    }
  }
}

  //  if (!hasMore.value) return;

  //   isLoading(true);
  //   try {
  //     final response = await http.get(
  //       Uri.parse('https://jsonplaceholder.typicode.com/posts?_page=${page.value}&_limit=10'),
  //     );

  //     if (response.statusCode == 200) {
  //       List<dynamic> data = jsonDecode(response.body);
  //       List<Post> newPosts = data.map((json) => Post.fromJson(json)).toList();
        
  //       if (newPosts.isEmpty) {
  //         hasMore(false);
  //       } else {
  //         posts.addAll(newPosts);
  //         page.value++;
  //       }
  //     } else {
  //       throw Exception('Failed to load posts');
  //     }
  //   } catch (e) {
  //     // Handle error
  //     print(e);
  //   } finally {
  //     isLoading(false);
  //   }
  // }