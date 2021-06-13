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
              text: "Download App",
              image: "images/designa.png",
              color: controller.getDesignaHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setDesignaHover(),
              onPressed: () => controller.urlLaunchDesignaJw(),
              textColor:
                  controller.getDesignaHover ? Colors.white : Colors.blue,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Obx(
            () => GridViewAppsCustom(
              title: "Relatório JW",
              text: "Download App",
              image: "images/relatorioJW.png",
              color: controller.getRelatorioHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setRelatorioHover(),
              onPressed: () => controller.urlLaunchRelatorioJw(),
              textColor:
                  controller.getRelatorioHover ? Colors.white : Colors.blue,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Obx(
            () => GridViewAppsCustom(
              title: "Mobiance",
              text: "Aguardando",
              image: "images/mobiance.png",
              color: controller.getMobianceHover
                  ? Colors.green
                  : Colors.transparent,
              onHover: (value) => controller.setMobianceHover(),
              onPressed: () => controller.urlLaunchMobiance(),
              textColor:
                  controller.getMobianceHover ? Colors.white : Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
