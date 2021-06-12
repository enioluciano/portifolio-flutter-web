import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/translations/app_translation.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_bindings.dart';

import 'app/routes/routes.dart';
import 'app/routes/routes_pages.dart';

import 'app/ui/util/themes.dart';
import 'app/ui/util/themes_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portifólio',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,

      // builder: DevicePreview.appBuilder,
      // locale: DevicePreview.locale(context),
      themeMode: ThemeService().getThemeMode(),
      initialBinding: HomeBindings(),

      initialRoute: Routes.HOME,
      getPages: RoutesPages.routes,
      locale: Locale('pt', 'BR'),

      translationsKeys: AppTranslation.translations,
    );
  }
}
