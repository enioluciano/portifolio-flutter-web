import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import 'widgets/custom_row.dart';

class AboutPageTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  "Sobre mim",
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
                  Row(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Bacharel em Ciência da Computação - Estácio de Sá.",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: Colors.green,
                        // size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Mestre em Ciência da Computação - Universidade Federal Piauí.",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.brightness_1,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Sou desenvolvedor mobile e professor universitário."
                          " Sou apaixonado pelo mundo digital e procuro estar sempre atualizado com as novas tecnologias. ",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Linguagens e Tecnologias que ja trabalhei",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colorB),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        CustomRow(text: "Flutter"),
                        CustomRow(text: "Dart"),
                        CustomRow(text: "Node Js"),
                        CustomRow(text: "Laravel"),
                        CustomRow(text: "Firebase"),
                        CustomRow(text: "Cloud Functions"),
                        CustomRow(text: "TypeScript"),
                        CustomRow(text: "JavaScript"),
                        CustomRow(text: "Api RestFul"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 70,
        )
      ],
    );
  }
}
