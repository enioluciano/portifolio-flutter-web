import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class SkillPageWeb extends StatelessWidget {
  final List<Widget> list = [
    Column(
      children: [
        FlutterLogo(
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Flutter",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.gitAlt,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Versionamento Git",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.googlePlay,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Google Play",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.appStore,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Apple Store",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.code,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Typescript",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.nodeJs,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text("Node Js",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("GetX",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.free_breakfast_outlined,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("MobX",
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(height: 3, thickness: 3, color: colorB),
            ),
            Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Habilidades",
                    style: TextStyle(
                      fontSize: 40,
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
          height: 50,
        ),
        LayoutBuilder(builder: (context, constraits) {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: constraits.maxWidth * 0.8,
              child: GridView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 100,
                      mainAxisSpacing: 50),
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.blue[100])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [list[index]],
                      ),
                    );
                  }),
            ),
          );
        })
      ],
    );
  }
}
