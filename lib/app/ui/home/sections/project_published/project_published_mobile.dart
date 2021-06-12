import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/widgets/grid_view_apps_custom.dart';

import '../../home_controller.dart';

class ProjectPublishedMobile extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Obx(
            () => GridViewAppsCustom(
              title: "Designa JW",
              image: "images/designa.png",
              color: controller.getDesignaHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setDesignaHover(),
              onTap: () => controller.urlLaunchDesignaJw(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Obx(
            () => GridViewAppsCustom(
              title: "Relatório JW",
              image: "images/relatorioJW.png",
              color: controller.getRelatorioHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setRelatorioHover(),
              onTap: () => controller.urlLaunchRelatorioJw(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Obx(
            () => GridViewAppsCustom(
              title: "Mobiance",
              image: "images/mobiance.png",
              color: controller.getMobianceHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setMobianceHover(),
              onTap: () => controller.urlLaunchMobiance(),
            ),
          ),
        ],
      ),
    );
  }
}
