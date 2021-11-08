import 'package:get/get.dart';
import 'package:newsapp/views/home/home.page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
  ];
}
