import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class SkillPageMobile extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final List<Widget> list = [
    Column(
      children: [
        FlutterLogo(
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Flutter",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.gitAlt,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Git",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.googlePlay,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Google Play",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.appStore,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Apple Store",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.code,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Typescript",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.nodeJs,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Node Js",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("GetX",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast_outlined,
          size: 45,
        ),
        SizedBox(
          height: 15,
        ),
        Text("MobX",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.brightness_1_outlined,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Clean Architecture",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.pattern,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Design Patterns",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.settings,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Tests",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
  ];
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
                    "skill-skill".tr,
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
                thickness: 2,
                color: colorB,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        LayoutBuilder(builder: (context, constraits) {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: constraits.maxWidth * 0.8,
              child: GridView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                  ),
                  // horizontal: constraits.maxWidth >= tabletBreakPoint ? 0 : 16),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.blue[100])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [list[index]],
                      ),
                    );
                  }),
            ),
          );
        })
      ],
    );
  }
}
