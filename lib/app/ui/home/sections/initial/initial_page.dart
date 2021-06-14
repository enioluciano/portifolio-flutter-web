import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/initial/initial_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class InitialPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return controller.getMaxWidth >= tabletBreakPoint
        ? Container(
            height: 821,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          child: AspectRatio(
                            aspectRatio: 0.8,
                            child: Image.asset(
                              "images/perfil.png",
                              // filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  child: SizedBox(
                                    height: 40,
                                    child: AutoSizeText(
                                      "Ênio Luciano",
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: colorB,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                            height: 40,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right,
                                color: colorB,
                                size: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Desenvolvedor de aplicativos móveis",
                                  style: TextStyle(
                                      fontFamily: "Roboto-light",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right,
                                color: colorB,
                                size: 30,
                              ),
                              Expanded(
                                child: Text(
                                  "Professor Universitário",
                                  style: TextStyle(
                                      fontFamily: "Roboto-light",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right,
                                color: colorB,
                                size: 30,
                              ),
                              Text(
                                "Freelancer",
                                style: TextStyle(
                                    fontFamily: "Roboto-light",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right,
                                color: colorB,
                                size: 30,
                              ),
                              Text(
                                "Parnaíba - PI",
                                style: TextStyle(
                                    fontFamily: "Roboto-light",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () => controller.urlLaunchGitHub(),
                                child: Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () => controller.urlLaunchLinkendIn(),
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                onTap: () => controller.urlLaunchInstagram(),
                                child: Icon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.blueGrey,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : InitialPageMobile();
  }
}
