import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/widgets/drawer_custom.dart';

import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';

import './home_controller.dart';
import 'sections/about/about_page.dart';
import 'sections/contact/contact_page.dart';
import 'sections/experience/experience_page.dart';
import 'sections/footer/footer_page.dart';
import 'sections/initial/initial_page.dart';
import 'sections/project_published/project_published.dart';
import 'sections/repositories/repositories.dart';
import 'sections/skill/skill_page.dart';
import 'widgets/mobile_app_bar.dart';
import 'widgets/web_app_bar.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraits) {
      print(constraits.maxWidth);
      return Scaffold(
          backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
          appBar: constraits.maxWidth <= tabletBreakPoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize:
                      Size(double.infinity, AppBar().preferredSize.height))
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize:
                      Size(double.infinity, AppBar().preferredSize.height)),
          drawer:
              constraits.maxWidth < tabletBreakPoint ? DrawerCustom() : null,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                key: JosKey.keyHome,
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1200),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          controller.maxWidth.value = constraints.maxWidth;
                          print(Get.height);
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                InitialPage(),
                                AboutPage(),
                                SkillPage(),
                                RepositoriesPages(),
                                ProjectPublishedPage(),
                                ExperiencePage(),
                                ContactPage()
                              ],
                            ),
                          );
                        },
                      )),
                  FooterPage()
                ],
              ),
            ),
          ));
    });
  }
}
