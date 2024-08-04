import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/views/homeView/home_binding.dart';
import 'package:project/views/homeView/home_view.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
        name: Routes.homePage, page: () => HomeView(), binding: HomeBinding())
  ];
}
