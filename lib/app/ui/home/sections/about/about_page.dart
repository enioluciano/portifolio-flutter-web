import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:timelines/timelines.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      key: JosKey.keyAbout,
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(height: 3, thickness: 3, color: colorB),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sobre mim",
                    style: TextStyle(
                      fontSize: 45,
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
                  Text(
                    "Formado em Ciência da Computação pela Estácio de Sá.\n\n"
                    "Mestre em Ciência da Computação pela Universidade Federal Piauí.\n\n"
                    "Sou desenvolvedor mobile e professor universitário."
                    "Sou apaixonado pelo mundo digital e procuro estar sempre atualizado com as novas tecnologias."
                    "\n\nFiquem a vontade para conhecer um pouco da minha trajetória profissional.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Linguagens e Tecnologias que ja trabalhei",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: colorB),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("Dart"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("NodeJS"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("Laravel"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("Firebase"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("Cloud Functions"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("TypeScript"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("JavaScript"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("API RestFull"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right, color: colorB),
                          Text("MySql"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}
