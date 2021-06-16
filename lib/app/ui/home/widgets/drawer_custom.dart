import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "welcome-welcome".tr,
                  ),
                  accountEmail: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text("drawer-drawer".tr),
                    ],
                  ),
                  currentAccountPicture: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text('appbar-home'.tr,
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(JosKey.keyHome.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text('appbar-about-me'.tr,
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(JosKey.keyAbout.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text(
                    'appbar-skill'.tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.stacked_line_chart_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(JosKey.keySkill.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text('appbar-repository'.tr,
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.code_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(
                        JosKey.keyRepository.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text('appbar-experience'.tr,
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(
                        JosKey.keyExperience.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: Text('appbar-contact'.tr,
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(JosKey.keyContact.currentContext,
                        duration: Duration(seconds: 1));

                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
