import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            // Text(" <Ênio Luciano>",
            //     style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 18))),
            Container(
              child: Row(
                children: [
                  // TextButton(
                  //     style: ButtonStyle(
                  //       enableFeedback: true,
                  //       animationDuration: Duration(seconds: 3),
                  //     ),
                  //     onPressed: () {
                  //       Scrollable.ensureVisible(JosKey.keyHome.currentContext,
                  //           duration: Duration(seconds: 1));
                  //     },
                  //     child: Text(
                  //       "Home",
                  //       style: TextStyle(color: Colors.grey),
                  //     )),

                  Obx(() => ItemCustomize(
                        text: "Home",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                controller.getHomeHover ? Colors.blue : colorIn,
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
                  // TextButton(
                  //     style: ButtonStyle(
                  //       enableFeedback: true,
                  //       animationDuration: Duration(seconds: 3),
                  //     ),
                  //     onPressed: () {
                  //       Scrollable.ensureVisible(JosKey.keyAbout.currentContext,
                  //           duration: Duration(seconds: 1));
                  //     },
                  //     child: Text("Sobre mim")),
                  Obx(() => ItemCustomize(
                        text: "Sobre mim",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: controller.getAboutMeHover
                                ? Colors.blue
                                : colorIn,
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
                  // TextButton(
                  //     style: ButtonStyle(
                  //       enableFeedback: true,
                  //       animationDuration: Duration(seconds: 3),
                  //     ),
                  //     onPressed: () {
                  //       Scrollable.ensureVisible(JosKey.keySkill.currentContext,
                  //           duration: Duration(seconds: 1));
                  //     },
                  //     child: Text("Habilidades")),
                  Obx(() => ItemCustomize(
                        text: "Habilidades",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: controller.getSkillHover
                                ? Colors.blue
                                : colorIn,
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
                  // TextButton(
                  //     style: ButtonStyle(
                  //       enableFeedback: true,
                  //       animationDuration: Duration(seconds: 3),
                  //     ),
                  //     onPressed: () {
                  //       Scrollable.ensureVisible(
                  //           JosKey.keyRepository.currentContext,
                  //           duration: Duration(seconds: 1));
                  //     },
                  //     child: Text("Repositórios")),
                  Obx(() => ItemCustomize(
                        text: "Repositórios",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: controller.getRepositoryHover
                                ? Colors.blue
                                : colorIn,
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
                        text: "Experiência",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                controller.getExpHover ? Colors.blue : colorIn,
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
                  // TextButton(
                  //     style: ButtonStyle(
                  //       enableFeedback: true,
                  //       animationDuration: Duration(seconds: 3),
                  //     ),
                  //     onPressed: () {
                  //       Scrollable.ensureVisible(
                  //           JosKey.keyExperience.currentContext,
                  //           duration: Duration(seconds: 1));
                  //     },
                  //     child: Text("Experience")),
                  // SizedBox(
                  //   width: 15,
                  // ),
                  Obx(() => ItemCustomize(
                        text: "Contato",
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: controller.getContactHover
                                ? Colors.blue
                                : colorIn,
                            fontSize: 14),
                        visible: controller.getContactHover,
                        backgroundColor: Colors.blue,
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
                      icon: Icon(
                        FontAwesomeIcons.moon,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        ThemeService().changeThemeMode();
                        ThemeService().isSavedDarkMode();
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
