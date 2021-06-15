import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/experience/experience_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/experience/experience_page_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/experience/experience_page_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:timelines/timelines.dart';

import '../../home_controller.dart';

class ExperiencePage extends StatelessWidget {
  List<Widget> list = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "060 dev",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.brightness_1,
              size: 8,
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(child: Text("Desenvolvedor mobile")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
              child: Text(
                "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
                child: Text("Refatoração e Implementação de novas features")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("Integração de APIs Rest")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Flutter web"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work,
              size: Get.width <= mobileBreakpoint ? 14 : 18,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Maio 2021 - Atual",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: Get.width <= mobileBreakpoint ? 10 : 14),
            ),
          ],
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GESTÃO INTELIGENTE DE SOFTWARE - GIS",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.brightness_1,
              size: 8,
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(child: Text("Desenvolvedor mobile")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
              child: Text(
                  "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter"),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
                child: Text("Refatoração e Implementação de novas features")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("Integração de APIs Rest")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work_off_outlined,
              size: Get.width <= mobileBreakpoint ? 14 : 18,
              color: Colors.red,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Fev. 2021 - Maio 2021",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: Get.width <= mobileBreakpoint ? 10 : 14),
            ),
          ],
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Freelancer - Flutter | Dart - Desenv. App Móveis ",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.brightness_1,
              size: 8,
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(child: Text("Desenvolvedor mobile")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
              child: Text(
                  "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter"),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("Integração com Firebase")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("Integração de APIs Rest")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work,
              size: Get.width <= mobileBreakpoint ? 14 : 18,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Abril 2020 - Atual",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: Get.width <= mobileBreakpoint ? 10 : 14),
            ),
          ],
        )
      ],
    ),
  ];

  var x = {"janeiro": "Testando", "fevereiro": "Testando"};
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keyExperience,
        child: Get.width <= mobileBreakpoint
            ? ExperiencePageMobile()
            : Get.width < tabletBreakPoint
                ? ExperiencePageTablet()
                : ExperiencePageWeb());
  }
}
