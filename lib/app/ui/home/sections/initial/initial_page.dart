import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 75,
          // ),

          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Image.asset(
                    "images/perfil.JPG",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    height: 700,
                    width: 600,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              //         CircleAvatar(
              //   radius: 200,
              //   backgroundImage: AssetImage("/images/perfil.JPG"),
              // )),
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
                                  fontSize: 40.0,
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
                        Text(
                          "Desenvolvedor de aplicativos móveis",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
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
                          "Professor Universitário",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
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
                              fontWeight: FontWeight.w400, fontSize: 20),
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
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.black,
                            ),
                            label: Text("Github")),
                        SizedBox(
                          width: 25,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.linkedin),
                            label: Text("Linkendin")),
                        SizedBox(
                          width: 25,
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.grey,
                            ),
                            label: Text("Instagram")),
                      ],
                    ),

                    //Detalhes importam, vale a pena esperar e fazê-los direito.
                    // Container(
                    //   margin: EdgeInsets.symmetric(horizontal: 18),
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.blue, width: 3),
                    //       borderRadius: BorderRadius.circular(20)),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(12.0),
                    //     child: Row(
                    //       mainAxisSize: MainAxisSize.min,
                    //       children: [
                    //         Icon(
                    //           Icons.android_rounded,
                    //           color: Colors.green,
                    //         ),
                    //         SizedBox(
                    //           width: 4,
                    //         ),
                    //         AnimatedTextKit(animatedTexts: [
                    //           TypewriterAnimatedText('Desenvolvedor Mobile',
                    //               speed: Duration(milliseconds: 100),
                    //               textStyle:
                    //                   TextStyle(fontWeight: FontWeight.bold))
                    //         ]),
                    //         SizedBox(
                    //           width: 4,
                    //         ),
                    //         Align(
                    //           alignment: Alignment.topCenter,
                    //           child: FaIcon(
                    //             FontAwesomeIcons.apple,
                    //             color: Colors.black,
                    //             size: 25,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),

          // SizedBox(
          //   height: 50,
          // ),

          // SizedBox(
          //   height: 50,
          // ),

          // SizedBox(
          //   height: 70,
          // ),
        ],
      ),
    );
  }
}
