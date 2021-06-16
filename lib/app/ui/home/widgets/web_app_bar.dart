import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/widgets/item_customize.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:portifolio_flutter_web/app/ui/util/themes_service.dart';
import '../home_controller.dart';

class WebAppBar extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      elevation: 0,
      title: Container(
        height: 50,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    '<',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    'Ênio Luciano',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontFamily: 'Agustina'),
                  ),
                  Text(
                    '/',
                    style: TextStyle(color: Colors.blue, fontSize: 40),
                  ),
                  Text(
                    '>',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Obx(() => ItemCustomize(
                        text: 'appbar-home'.tr,
                        textStyle: TextStyle(
                            color: controller.getHomeHover
                                ? Colors.blue
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getHomeHover,
                        backgroundColor: Colors.blue,
                        onHover: (value) => controller.setHomeHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keyHome.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Obx(() => ItemCustomize(
                        text: "appbar-about-me".tr,
                        textStyle: TextStyle(
                            color: controller.getAboutMeHover
                                ? colorB
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getAboutMeHover,
                        backgroundColor: Colors.blue,
                        onHover: (value) => controller.setAboutMeHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keyAbout.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Obx(() => ItemCustomize(
                        text: "appbar-skill".tr,
                        textStyle: TextStyle(
                            color: controller.getSkillHover
                                ? colorB
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getSkillHover,
                        backgroundColor: Colors.blue,
                        onHover: (value) => controller.setSkillHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keySkill.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Obx(() => ItemCustomize(
                        text: "appbar-repository".tr,
                        textStyle: TextStyle(
                            color: controller.getRepositoryHover
                                ? colorB
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getRepositoryHover,
                        backgroundColor: Colors.blue,
                        onHover: (value) => controller.setRepositoryHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keyRepository.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Obx(() => ItemCustomize(
                        text: "appbar-experience".tr,
                        textStyle: TextStyle(
                            color: controller.getExpHover
                                ? colorB
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getExpHover,
                        backgroundColor: Colors.blue,
                        onHover: (value) => controller.setExpHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keyExperience.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Obx(() => ItemCustomize(
                        text: "appbar-contact".tr,
                        textStyle: TextStyle(
                            color: controller.getContactHover
                                ? colorB
                                : Colors.grey[500],
                            fontSize: 14),
                        visible: controller.getContactHover,
                        backgroundColor: colorB,
                        onHover: (value) => controller.setContactHover(),
                        onTap: () {
                          Scrollable.ensureVisible(
                              JosKey.keyContact.currentContext,
                              duration: Duration(seconds: 1));
                        },
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      icon: Get.isDarkMode
                          ? Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.yellow[500],
                            )
                          : Icon(
                              Icons.nights_stay,
                              color: Colors.deepPurple,
                            ),
                      onPressed: () {
                        ThemeService().changeThemeMode();
                        // ThemeService().isSavedDarkMode();
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {
                        controller.changeTranslateApp();
                        controller.setChangeTranslate();
                      },
                      child: Obx(
                        () => controller.getChangeTranslate
                            ? Image.asset(
                                "images/brazil.png",
                                height: 45,
                                width: 40,
                              )
                            : Image.asset(
                                "images/euaP.png",
                                height: 50,
                                width: 45,
                              ),
                      ))
                  // IconButton(
                  //     icon: Get.isDarkMode
                  //         ? Icon(
                  //             Icons.translate_outlined,
                  //             color: Colors.yellow[500],
                  //           )
                  //         : Icon(
                  //             Icons.translate,
                  //             color: Colors.deepPurple,
                  //           ),
                  //     onPressed: () {
                  //       controller.setChangeTranslate();
                  //       controller.changeTranslateApp();
                  //     })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
