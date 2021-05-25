import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';

class ProjectPublishedPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keyAppPublished,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Apps publicados ",
            style: TextStyle(
                fontSize: 80, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Designa JW",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.asset(
                        "images/designa.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        height: 330,
                        width: 210,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) => controller.setDesignaHover(),
                    onTap: () => controller.urlLaunchDesignaJw(),
                    child: Obx(() => Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              //                   <--- left side
                              // color: Colors.blue,
                              color: controller.getDesignaHover
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 3.0,
                            )),
                          ),
                          child: Text("Download App"),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Relatório JW",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.asset(
                        "images/relatorioJW.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        height: 330,
                        width: 210,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) => controller.setRelatorioHover(),
                    onTap: () => controller.urlLaunchRelatorioJw(),
                    child: Obx(() => Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              //                   <--- left side
                              // color: Colors.blue,
                              color: controller.getRelatorioHover
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 3.0,
                            )),
                          ),
                          child: Text("Download App"),
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Relatório JW",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.asset(
                        "images/mobiance.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        height: 330,
                        width: 210,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onHover: (value) => controller.setMobianceHover(),
                    onTap: () {},
                    child: Obx(() => Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                              //                   <--- left side
                              // color: Colors.blue,
                              color: controller.getMobianceHover
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 3.0,
                            )),
                          ),
                          child: Text("Download App"),
                        )),
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
