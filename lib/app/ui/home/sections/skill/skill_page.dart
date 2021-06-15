import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/skill/skill_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/skill/skill_page_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/skill/skill_page_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';

class SkillPage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keySkill,
        child: Get.width <= mobileBreakpoint
            ? SkillPageMobile()
            : Get.width < tabletBreakPoint
                ? SkillPageTablet()
                : SkillPageWeb());
  }
}
