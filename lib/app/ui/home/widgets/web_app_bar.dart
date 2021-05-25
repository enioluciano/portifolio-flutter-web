import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/util/themes_service.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      title: Container(
        height: 50,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    '<',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    'Ênio Luciano',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontFamily: 'Agustina'),
                  ),
                  Text(
                    '/',
                    style: TextStyle(color: Colors.grey, fontSize: 40),
                  ),
                  Text(
                    '>',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
            // Text(" <Ênio Luciano>",
            //     style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 18))),
            Container(
              child: Row(
                children: [
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(JosKey.keyHome.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Home")),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(JosKey.keyAbout.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Sobre mim")),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(JosKey.keySkill.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Habilidades")),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(
                            JosKey.keyRepository.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Repositórios")),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(
                            JosKey.keyAppPublished.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Apps publicados")),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(
                            JosKey.keyExperience.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Experience")),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        animationDuration: Duration(seconds: 3),
                      ),
                      onPressed: () {
                        Scrollable.ensureVisible(
                            JosKey.keyContact.currentContext,
                            duration: Duration(seconds: 1));
                      },
                      child: Text("Contato")),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.moon,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        ThemeService().changeThemeMode();
                        ThemeService().isSavedDarkMode();
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
