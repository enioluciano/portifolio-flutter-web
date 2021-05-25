import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/sections/about/about_page.dart';
import 'package:portifolio_flutter_web/app/ui/sections/contact/contact_page.dart';
import 'package:portifolio_flutter_web/app/ui/sections/experience/experience_page.dart';
import 'package:portifolio_flutter_web/app/ui/sections/footer/footer_page.dart';
import 'package:portifolio_flutter_web/app/ui/sections/initial/initial_page.dart';
import 'package:portifolio_flutter_web/app/ui/sections/project_published/project_published.dart';
import 'package:portifolio_flutter_web/app/ui/sections/repositories/repositories.dart';
import 'package:portifolio_flutter_web/app/ui/sections/skill/skill_page.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';

import './home_controller.dart';
import 'widgets/mobile_app_bar.dart';
import 'widgets/web_app_bar.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraits) {
      print(constraits.maxHeight);
      return Scaffold(
          appBar: constraits.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 74))
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 74)),
          drawer: constraits.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                key: JosKey.keyHome,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 1200),
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
                  ),
                  FooterPage()
                ],
              ),
            ),
          ));
    });
  }
}

// Scaffold(
//   appBar: AppBar(
//     title: Text('HomePage'),
//     actions: [
//       IconButton(
//           icon: Icon(FontAwesomeIcons.moon),
//           onPressed: () {
//             ThemeService().changeThemeMode();
//             ThemeService().isSavedDarkMode();
//           })
//     ],
//   ),
//   body: Container(),
// );
