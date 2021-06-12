import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/skill/skill_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class SkillPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final List<Widget> list = [
    Column(
      children: [
        FlutterLogo(
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Flutter"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.gitAlt,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Versionamento Git"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.googlePlay,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Google Play"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.appStore,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Apple Store"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.code,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Typescript"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.nodeJs,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Node Js"),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("GetX"),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast_outlined,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("MobX"),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keySkill,
      child: controller.getMaxWidth <= mobileBreakpoint
          ? SkillPageMobile()
          : Column(
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
                            "Habilidades",
                            style: TextStyle(
                              fontSize:
                                  controller.getMaxWidth <= mobileBreakpoint
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
                  height: 50,
                ),
                LayoutBuilder(builder: (context, constraits) {
                  return Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      width: constraits.maxWidth * 0.8,
                      child: GridView.builder(
                          itemCount: list.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  crossAxisSpacing: 100,
                                  mainAxisSpacing: 50),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          // horizontal: constraits.maxWidth >= tabletBreakPoint ? 0 : 16),
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 10,
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
            ),
    );
  }
}
