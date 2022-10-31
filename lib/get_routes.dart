import 'package:get/get.dart';
import 'app_routes.dart';
import 'main.dart';

class GetAppRoute{

  List<GetPage> getRoutes(){
    return [
      GetPage(
        name: AppRoute.initial,
        page: () => const MyHomePage(title: 'Getx Routing'),
      ),
      GetPage(
        name: AppRoute.secondPage,
        page: () => const SecondPage(),
      ),
    ];
  }

}