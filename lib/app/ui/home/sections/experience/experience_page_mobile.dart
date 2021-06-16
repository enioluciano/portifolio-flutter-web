import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:timelines/timelines.dart';
import 'package:get/get.dart';

class ExperiencePageMobile extends StatelessWidget {
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
            Expanded(child: Text("experience-dev-mobile".tr)),
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
                "experience-dev-mobile-flutter".tr,
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
            Expanded(child: Text("experience-refactor".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("experience-rest-api-integration".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Text("experience-flutter-web".tr),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work,
              size: 14,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "experience-may".tr,
              style: TextStyle(color: Colors.grey, fontSize: 10),
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
            Expanded(child: Text("experience-dev-mobile".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
              child: Text("experience-dev-mobile-flutter".tr),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("experience-refactor".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("experience-rest-api-integration".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work_off_outlined,
              size: 14,
              color: Colors.red,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "experience-february".tr,
              style: TextStyle(color: Colors.grey, fontSize: 10),
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
            Expanded(child: Text("experience-dev-mobile".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(
              child: Text("experience-dev-mobile-flutter".tr),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("experience-firebase".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.arrow_right_rounded),
            Expanded(child: Text("experience-rest-api-integration".tr)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.work,
              size: 14,
              color: Colors.green,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "experience-april".tr,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        )
      ],
    ),
  ];

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
                    "experience-name".tr,
                    style: TextStyle(
                      fontSize: 22,
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
