import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/project_published_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/project_published/widgets/grid_view_apps_custom.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class ProjectPublishedPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keyAppPublished,
      child: Column(
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
                      "Apps publicados",
                      style: TextStyle(
                        fontSize: controller.getMaxWidth <= mobileBreakpoint
                            ? 18
                            : 45,
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
              controller.getMaxWidth <= mobileBreakpoint
                  ? ProjectPublishedMobile()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Obx(
                          () => GridViewAppsCustom(
                            title: "Designa JW",
                            text: "Download App",
                            image: "images/designa.png",
                            onHover: (value) => controller.setDesignaHover(),
                            onPressed: () => controller.urlLaunchDesignaJw(),
                            textColor: controller.getDesignaHover
                                ? Colors.white
                                : Colors.blue,
                          ),
                        ),
                        Obx(
                          () => GridViewAppsCustom(
                            title: "Relatório JW",
                            text: "Download App",
                            image: "images/relatorioJW.png",
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
                              onPressed: () => controller.urlLaunchMobiance(),
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
              "* Alguns projetos não podem ser apresentado devido ao termo de sigilo entre o desenvolvedor e o cliente/empressa",
              style: TextStyle(color: Colors.red, fontSize: 10),
            ),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
