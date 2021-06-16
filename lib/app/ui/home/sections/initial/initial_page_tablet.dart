import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class InitialPageTablet extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      child: Get.isDarkMode
                          ? ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Colors.grey[100], BlendMode.color),
                              child: Image.asset(
                                "images/perfil.png",

                                // filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Image.asset(
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
                            child: Text(
                              "Ênio Luciano",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: colorB,
                                  fontWeight: FontWeight.bold),
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
                            "initial-dev-mobile".tr,
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
                            "initial-teacher-university".tr,
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
                          "initial-freelancer".tr,
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
                          "initial-parnaiba-pi".tr,
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
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => controller.urlLaunchGitHub(),
                          child: Icon(
                            FontAwesomeIcons.github,
                            color: Get.isDarkMode
                                ? Colors.deepPurple[700]
                                : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => controller.urlLaunchLinkendIn(),
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => controller.urlLaunchInstagram(),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => controller.urlLaunchCnpq(),
                          child: Image.asset(
                            "images/cnpP.png",
                            height: 100,
                            width: 70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
