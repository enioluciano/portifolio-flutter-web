import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';
import 'package:portifolio_flutter_web/app/ui/util/themes_service.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
      title: Text(
        "Seja Bem-vindo!",
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
            })
      ],
    );
  }
}
