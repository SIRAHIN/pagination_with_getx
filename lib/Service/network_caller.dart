import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pagination_with_flutter/Models/Product%20Model/Product_list_data.dart';

class NetworkCaller {
  Future<http.Response?> getRequest(String url,) async {
    final http.Response response = await http.get(Uri.parse(url), headers: {
      'Content-type': 'application/json',
    });
    if (response.statusCode == 200) {
     return response;
    } else {
     Get.snackbar('Oops', 'Data Can\'t featch');
    }
    return null;
   
   
  }
}