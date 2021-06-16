import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';
import 'widgets/grid_view_apps_custom.dart';

class ProjectPublishedTablet extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(height: 3, thickness: 2, color: colorB),
            ),
            Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "apps-published-name".tr,
                    style: TextStyle(
                      fontSize: 18,
                      color: corSection,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Expanded(
              child: Divider(
                height: 3,
                thickness: 2,
                color: colorB,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        Align(
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
                  image: "images/relatoriojw.png",
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
        ),
        SizedBox(
          height: 70,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "apps-published-description".tr,
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
