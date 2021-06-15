import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';
import 'widgets/grid_view_apps_custom.dart';

class ProjectPublishedWeb extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(height: 3, thickness: 3, color: colorB),
            ),
            Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "apps-published-name".tr,
                    style: TextStyle(
                      fontSize: 40,
                      color: corSection,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Expanded(
              child: Divider(
                height: 3,
                thickness: 3,
                color: colorB,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => GridViewAppsCustom(
                    title: "Designa JW",
                    text: "Download App",
                    image: "images/designa.png",
                    onHover: (value) => controller.setDesignaHover(),
                    onPressed: () => controller.urlLaunchDesignaJw(),
                    textColor:
                        controller.getDesignaHover ? Colors.white : Colors.blue,
                  ),
                ),
                Obx(
                  () => GridViewAppsCustom(
                    title: "Relatório JW",
                    text: "Download App",
                    image: "images/relatoriojw.png",
                    onHover: (value) => controller.setRelatorioHover(),
                    onPressed: () => controller.urlLaunchRelatorioJw(),
                    textColor: controller.getRelatorioHover
                        ? Colors.white
                        : Colors.blue,
                  ),
                ),
                Obx(
                  () => GridViewAppsCustom(
                      title: "Mobiance",
                      text: "Aguardando",
                      image: "images/mobiance.png",
                      onHover: (value) => controller.setMobianceHover(),
                      onPressed: null,
                      textColor: controller.getMobianceHover
                          ? Colors.white
                          : Colors.blue),
                ),
              ],
            ),
          ],
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
