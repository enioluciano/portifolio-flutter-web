import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/routes/routes.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_page.dart';

class RoutesPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),

    // GetPage(
    //     name: Routes.HOME,
    //     page: () => HomePage(),
    //     transition: Transition.zoom,
    //     binding: HomeBindings()),
  ];
}
