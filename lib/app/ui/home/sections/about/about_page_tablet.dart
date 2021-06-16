import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:get/get.dart';
import 'widgets/custom_row.dart';

class AboutPageTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Divider(
              thickness: 2,
              height: 3,
              color: colorB,
            )),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'about-me-about-me'.tr,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: colorB),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
                child: Divider(
              thickness: 2,
              height: 3,
              color: colorB,
            )),
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
                          "about-me-bachelor-science-computer".tr,
                          style: TextStyle(fontSize: 14),
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
                          "about-me-master-science-computer".tr,
                          style: TextStyle(fontSize: 14),
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
                          "about-me-description-me".tr,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
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
                        "aboute-me-languages-tecnology-worked".tr,
                        style: TextStyle(
                            fontSize: 14,
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
                        CustomRow(text: "Flutter"),
                        CustomRow(text: "Dart"),
                        CustomRow(text: "Node Js"),
                        CustomRow(text: "Laravel"),
                        CustomRow(text: "Firebase"),
                        CustomRow(text: "Cloud Functions"),
                        CustomRow(text: "TypeScript"),
                        CustomRow(text: "JavaScript"),
                        CustomRow(text: "Api RestFul"),
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
