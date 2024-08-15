import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Obx(() {
        if (homeController.isLoading.value &&
            homeController.productDataList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return NotificationListener<ScrollNotification>(
          onNotification: (scrollInfo) {
            if (scrollInfo.metrics.pixels ==
                scrollInfo.metrics.maxScrollExtent) {
              homeController.getProductData();
            }
            return false;
          },
          child: ListView.builder(
            itemCount:
                homeController.productDataList.length ,
            itemBuilder: (context, index) {
              final product =
                  homeController.productDataList[index];
              return ListTile(
                leading: CircleAvatar(
                 child: Text((index + 1).toString()),
                ),
                title: Text(product.name ?? ''),
                subtitle: Text(
                  product.metaDescription == null ? 'No Descroption Found' : product.metaDescription.toString(),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
