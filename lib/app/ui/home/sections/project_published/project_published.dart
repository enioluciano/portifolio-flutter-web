import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/project_published_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/project_published_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/project_published_web.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/widgets/grid_view_apps_custom.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class ProjectPublishedPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keyAppPublished,
        child: Get.width <= mobileBreakpoint
            ? ProjectPublishedMobile()
            : Get.width < tabletBreakPoint
                ? ProjectPublishedTablet()
                : ProjectPublishedWeb());
  }
}
