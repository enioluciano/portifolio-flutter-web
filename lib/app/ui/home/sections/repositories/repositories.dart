import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/repositories/repositories_mobile_page.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class RepositoriesPages extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keyRepository,
      child: Get.width <= mobileBreakpoint
          ? RepositoriesMobilePage()
          : Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(height: 3, thickness: 3, color: colorB),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Repositórios",
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
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onHover: (value) => controller.setMyfriedgeHover(),
                            onTap: () => controller.urlLaunchTodoGetX(),
                            child: Obx(
                              () => Card(
                                elevation: 3,
                                shadowColor: controller.getMyfriedgeHover
                                    ? Colors.green
                                    : Colors.blue,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 130,
                                  width: Get.width * 0.25,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                      //                   <--- left side
                                      // color: Colors.blue,
                                      color: controller.getMyfriedgeHover
                                          ? Colors.green
                                          : Colors.blue,
                                      width: 3.0,
                                    )),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "my_friedge",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: colorB),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "App voltado para as tarefas.",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.github,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text("Github")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onHover: (value) => controller.setAppTodoHover(),
                          onTap: () => controller.urlLaunchTodoGetX(),
                          child: Obx(
                            () => Card(
                              elevation: 3,
                              shadowColor: controller.getAppTodoHover
                                  ? Colors.green
                                  : Colors.blue,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 130,
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    //                   <--- left side
                                    // color: Colors.blue,
                                    color: controller.getAppTodoHover
                                        ? Colors.green
                                        : Colors.blue,
                                    width: 3.0,
                                  )),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "app_toDo",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: colorB),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "App voltado para listar tarefas",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.github,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("Github")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onHover: (value) => controller.setBlogHover(),
                          onTap: () => controller.urlLaunchTodoGetX(),
                          child: Obx(
                            () => Card(
                              elevation: 3,
                              shadowColor: controller.getBlogHover
                                  ? Colors.green
                                  : Colors.blue,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 120,
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    //                   <--- left side
                                    // color: Colors.blue,
                                    color: controller.getBlogHover
                                        ? Colors.green
                                        : Colors.blue,
                                    width: 3.0,
                                  )),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "blog",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: colorB),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "App com apenas UI",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.github,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("Github")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onHover: (value) => controller.setPortifolioHover(),
                          onTap: () => controller.urlLaunchPortifolioWeB(),
                          child: Obx(
                            () => Card(
                              elevation: 3,
                              shadowColor: controller.getLocalHover
                                  ? Colors.green
                                  : Colors.blue,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 120,
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    //                   <--- left side
                                    // color: Colors.blue,
                                    color: controller.getPortifolioHover
                                        ? Colors.green
                                        : Colors.blue,
                                    width: 3.0,
                                  )),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "portifólio-flutter-web",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: colorB),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Meu Portifólio",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.github,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("Github")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onHover: (value) => controller.setProjectPokemon(),
                          onTap: () => controller.urlLaunchPokemon(),
                          child: Obx(
                            () => Card(
                              elevation: 3,
                              shadowColor: controller.getProjectPokemon
                                  ? Colors.green
                                  : Colors.blue,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 120,
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                    //                   <--- left side
                                    // color: Colors.blue,
                                    color: controller.getProjectPokemon
                                        ? Colors.green
                                        : Colors.blue,
                                    width: 3.0,
                                  )),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "ProjetoPokemon",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: colorB),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Cards Pokemon",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.github,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("Github")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        // InkWell(
                        //   onHover: (value) => controller.setLocalHover(),
                        //   onTap: () => controller.urlLaunchPokemon(),
                        //   child: Obx(
                        //     () => Card(
                        //       elevation: 3,
                        //       shadowColor: controller.getLocalHover
                        //           ? Colors.green
                        //           : Colors.blue,
                        //       child: Container(
                        //         padding: EdgeInsets.all(8),
                        //         height: 120,
                        //         width: Get.width * 0.25,
                        //         decoration: BoxDecoration(
                        //           border: Border(
                        //               bottom: BorderSide(
                        //             //                   <--- left side
                        //             // color: Colors.blue,
                        //             color: controller.getLocalHover
                        //                 ? Colors.green
                        //                 : Colors.blue,
                        //             width: 3.0,
                        //           )),
                        //         ),
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Column(
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.start,
                        //             mainAxisSize: MainAxisSize.min,
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceAround,
                        //             children: [
                        //               Text(
                        //                 "app_toDo",
                        //                 style: TextStyle(
                        //                     fontWeight: FontWeight.w700,
                        //                     color: colorB),
                        //               ),
                        //               SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Text(
                        //                 "Cards Pokemon",
                        //                 style: TextStyle(
                        //                     color: Colors.grey, fontSize: 14),
                        //               ),
                        //               SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Icon(
                        //                     FontAwesomeIcons.github,
                        //                     size: 20,
                        //                     color: Colors.black,
                        //                   ),
                        //                   SizedBox(
                        //                     width: 4,
                        //                   ),
                        //                   Text("Github")
                        //                 ],
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
