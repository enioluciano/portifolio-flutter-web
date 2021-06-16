import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:portifolio_flutter_web/app/ui/util/themes_service.dart';

import '../home_controller.dart';

class MobileAppBar extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Get.isDarkMode ? Colors.white : colorB),
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      title: Text(
        "welcome-welcome".tr,
        style: TextStyle(color: colorB),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            icon: Get.isDarkMode
                ? Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.yellow[700],
                  )
                : Icon(
                    Icons.nights_stay,
                    color: Colors.deepPurple,
                  ),
            onPressed: () {
              ThemeService().changeThemeMode();
              // ThemeService().isSavedDarkMode();
            }),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: InkWell(
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                controller.changeTranslateApp();
                controller.setChangeTranslate();
              },
              child: Obx(
                () => controller.getChangeTranslate
                    ? Image.asset(
                        "images/brazil.png",
                        height: 40,
                        width: 35,
                      )
                    : Image.asset(
                        "images/euaP.png",
                        height: 40,
                        width: 35,
                      ),
              )),
        )
      ],
    );
  }
}
