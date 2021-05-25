import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:timelines/timelines.dart';

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
            Text("Desenvolvedor mobile"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text(
                "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Refatoração e Implementação de novas features"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Integração de APIs Rest"),
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
              style: TextStyle(color: Colors.grey),
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
            Text("Desenvolvedor mobile"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text(
                "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Refatoração e Implementação de novas features"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Integração de APIs Rest"),
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
              style: TextStyle(color: Colors.grey),
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
            Text("Desenvolvedor mobile"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text(
                "Desenvolvimento de aplicativos para dispositivos móveis utilizando Flutter"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Integração com Firebase"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("Integração de APIs Rest"),
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
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    ),
  ];

  var x = {"janeiro": "Testando", "fevereiro": "Testando"};
  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keyExperience,
        color: Colors.grey[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Experiência ",
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: list[index],
                  ),
                ),
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) =>
                    IndicatorStyle.outlined,
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )
        // Timeline.tileBuilder(
        //   builder: TimelineTileBuilder.fromStyle(
        //     contentsAlign: ContentsAlign.alternating,
        //     contentsBuilder: (context, index) => Padding(
        //       padding: const EdgeInsets.all(24.0),
        //       child: Text('Timeline Event $index'),
        //     ),
        //     itemCount: 10,
        //   ),
        // ),

        );
  }
}
