import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_with_flutter/routes/route_name.dart';
import 'package:pagination_with_flutter/routes/route_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Pagination With Getx',
      initialRoute: RoutesName.homeScreen,
      getPages: routes,
     
    );
  }
}