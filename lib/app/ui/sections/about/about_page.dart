import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:timelines/timelines.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        key: JosKey.keyAbout,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sobre mim",
                style: TextStyle(fontSize: 60),
              )),
          SizedBox(
            height: 120,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage(
                    "/images/enio.JPG",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Olá, meu nome é Ênio,  moro em Parnaíba - Piauí. Comecei na programação em 2019 como desenvolvedor mobile em Flutter,"
                      "depois trabalhei com alguns frameworks, como Node JS, Vue JS e React Js."
                      "E hoje já trabalho com flutter e estou aqui ate o momento. \n\n"
                      "Continua gostando de desafio e ideias inovadoras, atualmente divide seu tempo entre consultoria, construção de negócios, programação e um café bem forte."
                      "Com muita motivação, gerencia um blog em que busca passar o maior número de conhecimentos possíveis para outros profissionais da área de tecnologia e apresenta um pouco de sua rotina profissional no seu perfil do Instagram com o objetivo de compartilhar ensinamentos e experiências a profissionais."
                      "Gosto de todos os assuntos que envolvem tecnologia, e amo programar.",
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
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_right, color: Colors.blue),
                            Text(
                              "Flutter",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("Dart"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("NodeJS"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("Laravel"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("Firebase"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("Cloud Functions"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("TypeScript"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("JavaScript"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text("API RestFull"),
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
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
