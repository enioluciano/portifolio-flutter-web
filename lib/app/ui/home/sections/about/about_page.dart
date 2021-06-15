import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/about/about_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/about/about_page_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/about/about_page_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Get.width <= mobileBreakpoint
        ? AboutPageMobile()
        : Get.width < tabletBreakPoint
            ? AboutPageTablet()
            : AboutPageWeb();
  }
}
