import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/initial/initial_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/initial/initial_page_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/initial/initial_page_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class InitialPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    print("Get width: ${Get.width}");
    print("controller max: ${controller.maxWidth}");
    return Get.width <= mobileBreakpoint
        ? InitialPageMobile()
        : Get.width < tabletBreakPoint
            ? InitialPageTablet()
            : InitialPageWeb();
  }
}
