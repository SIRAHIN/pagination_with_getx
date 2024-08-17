import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_with_flutter/Models/Product%20Model/Product_list_data.dart';
import 'package:pagination_with_flutter/Screen/Controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paginated Products'),
      ),
      body: Obx(
        () => homeController.isLoading.value == true
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                controller: homeController.scrollController,
                itemCount: ((homeController.productDataList.length + 1) ?? 0),
                itemBuilder: (context, index) {
                  // checking if the index is less then the length the go if statement //
                  if (index < homeController.productDataList.length) {
                    final product = homeController.productDataList[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text((index + 1).toString()),
                        ),
                        title: Text(
                          product.name ?? '',
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          product.metaDescription == null
                              ? 'No Descroption Found'
                              : product.metaDescription.toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    );
                    // here come after index is greater then the length //
                  } else {
                    return Obx(() => homeController.hasMore.value == true
                        ? const Center(child: CircularProgressIndicator())
                        : const Center(child:  Text('No Data left to fetched')));
                  }
                }),
      ),
    );
  }
}
