import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/about/about_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:timelines/timelines.dart';

import '../../home_controller.dart';

class AboutPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantege(String title) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_right, color: colorB),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    }

    return Column(
      key: JosKey.keyAbout,
      children: [
        Get.width <= mobileBreakpoint
            ? AboutPageMobile()
            : Row(
                children: [
                  Expanded(
                    child: Divider(height: 3, thickness: 3, color: colorB),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Sobre mim",
                          style: TextStyle(
                            fontSize: controller.getMaxWidth <= mobileBreakpoint
                                ? 22
                                : 45,
                            color: corSection,
                            fontWeight: FontWeight.bold,
                            // decoration: TextDecoration.underline
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
          height: 60,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Bacharel em Ciência da Computação - Estácio de Sá.",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: Colors.green,
                        // size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Mestre em Ciência da Computação - Universidade Federal Piauí.",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.brightness_1,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Sou desenvolvedor mobile e professor universitário."
                          " Sou apaixonado pelo mundo digital e procuro estar sempre atualizado com as novas tecnologias. ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     Expanded(
                  //       child: Text(
                  //         "Fiquem a vontade para conhecer um pouco da minha trajetória profissional!",
                  //         style: TextStyle(fontSize: 16, color: colorIn),
                  //       ),
                  //     ),
                  //     Icon(
                  //       Icons.tag_faces_rounded,
                  //       color: colorIn,
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Linguagens e Tecnologias que ja trabalhei",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: colorB),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        buildHorizontalAdvantege("Flutter"),
                        buildHorizontalAdvantege("Dart"),
                        buildHorizontalAdvantege("Node Js"),
                        buildHorizontalAdvantege("Laravel"),
                        buildHorizontalAdvantege("Firebase"),
                        buildHorizontalAdvantege("Cloud Functions"),
                        buildHorizontalAdvantege("TypeScript"),
                        buildHorizontalAdvantege("JavaScript"),
                        buildHorizontalAdvantege("Api RestFul"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 70,
        )
      ],
    );
  }
}
