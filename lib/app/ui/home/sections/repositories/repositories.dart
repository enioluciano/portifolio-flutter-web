import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/repositories/repositories_mobile_page.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/repositories/repositories_pages_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/repositories/repositories_pages_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class RepositoriesPages extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keyRepository,
        child: Get.width <= mobileBreakpoint
            ? RepositoriesMobilePage()
            : Get.width < tabletBreakPoint
                ? RepositoryPageTablet()
                : RepositoryPageWeb());
  }
}
