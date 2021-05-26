import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(
          //   height: 75,
          // ),
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage(
              "/images/enio.JPG",
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Text(
            "Ênio Luciano",
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.android_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText('Desenvolvedor Mobile',
                        speed: Duration(milliseconds: 100),
                        textStyle: TextStyle(fontWeight: FontWeight.bold))
                  ]),
                  SizedBox(
                    width: 4,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 70,
          // ),
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
        ],
      ),
    );
  }
}
