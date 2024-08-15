
import 'package:get/get.dart';
import 'package:pagination_with_flutter/Screen/home_screen.dart';
import 'route_name.dart';

List<GetPage<dynamic>>? routes = [
GetPage(name: RoutesName.homeScreen, page: () =>  HomeScreen(),),

];