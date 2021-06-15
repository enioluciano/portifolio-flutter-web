import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:timelines/timelines.dart';

import '../../home_controller.dart';

class ExperiencePageWeb extends StatelessWidget {
  final List<Widget> list = [
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
              size: 18,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Maio 2021 - Atual",
              style: TextStyle(color: Colors.grey, fontSize: 14),
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
              size: 18,
              color: Colors.red,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Fev. 2021 - Maio 2021",
              style: TextStyle(color: Colors.grey, fontSize: 14),
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
              size: 18,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Abril 2020 - Atual",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        )
      ],
    ),
  ];

  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
                    "Experiência",
                    style: TextStyle(
                      fontSize: 40,
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
          height: 80,
        ),
        FixedTimeline.tileBuilder(
          builder: TimelineTileBuilder.connectedFromStyle(
            contentsAlign: ContentsAlign.alternating,
            // oppositeContentsBuilder: (context, index) =>
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("aaa: ${x[index]}"),
            // ),
            contentsBuilder: (context, index) => Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blue[100])),
              elevation: 10,
              shadowColor: colorB,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: list[index],
              ),
            ),
            connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
            indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
            itemCount: list.length,
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
