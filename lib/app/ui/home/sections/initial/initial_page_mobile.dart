import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class InitialPageMobile extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Get.height,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 350,
              child: AspectRatio(
                aspectRatio: 0.9,
                child: Get.isDarkMode
                    ? ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(Colors.grey[100], BlendMode.color),
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
          SizedBox(
            height: 40,
          ),
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
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
