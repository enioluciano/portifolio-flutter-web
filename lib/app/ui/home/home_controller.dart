import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/themes_service.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  RxDouble maxWidth = 0.0.obs;
  double get getMaxWidth => maxWidth.value;
  //**
  //   BEGIN APPBAR
  //
  // */

  RxBool aboutMeHover = false.obs;
  bool get getAboutMeHover => aboutMeHover.value;
  bool setAboutMeHover() => aboutMeHover.value = !aboutMeHover.value;

  RxBool homeHover = false.obs;
  bool get getHomeHover => homeHover.value;
  bool setHomeHover() => homeHover.value = !homeHover.value;

  RxBool skillHover = false.obs;
  bool get getSkillHover => skillHover.value;
  bool setSkillHover() => skillHover.value = !skillHover.value;

  RxBool expHover = false.obs;
  bool get getExpHover => expHover.value;
  bool setExpHover() => expHover.value = !expHover.value;

  RxBool repositoryHover = false.obs;
  bool get getRepositoryHover => repositoryHover.value;
  bool setRepositoryHover() => repositoryHover.value = !repositoryHover.value;

  RxBool contactHover = false.obs;
  bool get getContactHover => contactHover.value;
  bool setContactHover() => contactHover.value = !contactHover.value;

  RxBool changeTranslate = false.obs;
  bool get getChangeTranslate => changeTranslate.value;
  bool setChangeTranslate() => changeTranslate.value = !changeTranslate.value;

  changeTranslateApp() {
    changeTranslate.value
        ? Get.updateLocale(Locale('pt', 'BR'))
        : Get.updateLocale(Locale('en', 'US'));
  }

  //**
  //  FINISH APPBAR
  //
  // */

  RxBool localHover = false.obs;
  bool get getLocalHover => localHover.value;
  bool setLocalHover() => localHover.value = !localHover.value;

  RxBool phoneHover = false.obs;
  bool get getPhoneHover => phoneHover.value;
  bool setPhoneHover() => phoneHover.value = !phoneHover.value;

  RxBool emailHover = false.obs;
  bool get getEmailHover => emailHover.value;
  bool setEmailHover() => emailHover.value = !emailHover.value;

  RxBool designaHover = false.obs;
  bool get getDesignaHover => designaHover.value;
  bool setDesignaHover() => designaHover.value = !designaHover.value;

  RxBool relatorioHover = false.obs;
  bool get getRelatorioHover => relatorioHover.value;
  bool setRelatorioHover() => relatorioHover.value = !relatorioHover.value;

  RxBool mobianceHover = false.obs;
  bool get getMobianceHover => mobianceHover.value;
  bool setMobianceHover() => mobianceHover.value = !mobianceHover.value;

  //*
  //  INICIO REPOSITÓRIOS
  //
  // */

  RxBool appTodoHover = false.obs;
  bool get getAppTodoHover => appTodoHover.value;
  bool setAppTodoHover() => appTodoHover.value = !appTodoHover.value;

  RxBool myFriedgeHover = false.obs;
  bool get getMyfriedgeHover => myFriedgeHover.value;
  bool setMyfriedgeHover() => myFriedgeHover.value = !myFriedgeHover.value;

  RxBool blogHover = false.obs;
  bool get getBlogHover => blogHover.value;
  bool setBlogHover() => blogHover.value = !blogHover.value;

  RxBool portifolioHover = false.obs;
  bool get getPortifolioHover => portifolioHover.value;
  bool setPortifolioHover() => portifolioHover.value = !portifolioHover.value;

  RxBool projectPokemon = false.obs;
  bool get getProjectPokemon => projectPokemon.value;
  bool setProjectPokemon() => projectPokemon.value = !projectPokemon.value;

  Rx<Color> color = Colors.transparent.obs;

  // RxBool mobianceHover = false.obs;
  // bool get getMobianceHover => mobianceHover.value;
  // bool setMobianceHover() => mobianceHover.value = !mobianceHover.value;

  // RxBool mobianceHover = false.obs;
  // bool get getMobianceHover => mobianceHover.value;
  // bool setMobianceHover() => mobianceHover.value = !mobianceHover.value;

  // RxBool mobianceHover = false.obs;
  // bool get getMobianceHover => mobianceHover.value;
  // bool setMobianceHover() => mobianceHover.value = !mobianceHover.value;

  //**
  //
  //  FIM REPOSITORIOS
  //
  // */

  void urlLaunchGitHub() async =>
      await canLaunch("https://github.com/enioluciano")
          ? await launch("https://github.com/enioluciano")
          : throw 'Could not launch https://github.com/enioluciano';

  void urlLaunchInstagram() async =>
      await canLaunch("https://www.instagram.com/enio.luciano/")
          ? await launch("https://www.instagram.com/enio.luciano/")
          : throw 'Could not launch https://www.instagram.com/enio.luciano/';

  void urlLaunchCnpq() async => await canLaunch(
          "http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K8983918U4&tokenCaptchar=03AGdBq26dQqrQ0WXlf4wT59KmWvJk-jDkEFSnRPynkRz21E72LDGIsJb5FhhHaaqm2HuN2BJncSKPqNSn4kmdmDbXZC8jdHBsjqN_Gqg_XMkEWGlG-bkO4sLBuGPCd-u45ywSMZPh9KGJhiOoHP_4G2bKqdGHnvqujCBhb9cHzEwj3FZunZ77oopDO2_O6Hp05Hp58GlhKd_Qll52AEVmkQy1ivUbni6NqqUFgy_yRLG0kNpfABvBlbd-KGsrj8LEAvdsIKXrJ_g6zdyIO8_PeNeiBOZQrmEicMudGwr3Ep2YmETnx1V5wkgX0AQ1v4xQSbjrA_xJOtN-roxDqkPuMHWokKPbokWmhR5Pwd12wZXqVV08T5FebzV7k5t1BvBUxoOJ-soEzwIgsBbMtyZ2U9pj2rSonOt9niI9XalG10u1Mb-vnB6LmdtkmU79ti2SMOMfm3XXNuFB9xwIgfX5D4qnSbU_vLgTZIQAy9PwVLS5m7evsy03AZr2-KIAwMMA9LyzzVKs1xn_iY5p0seg4zM-rmnPrfx0iA")
      ? await launch(
          "http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K8983918U4&tokenCaptchar=03AGdBq26dQqrQ0WXlf4wT59KmWvJk-jDkEFSnRPynkRz21E72LDGIsJb5FhhHaaqm2HuN2BJncSKPqNSn4kmdmDbXZC8jdHBsjqN_Gqg_XMkEWGlG-bkO4sLBuGPCd-u45ywSMZPh9KGJhiOoHP_4G2bKqdGHnvqujCBhb9cHzEwj3FZunZ77oopDO2_O6Hp05Hp58GlhKd_Qll52AEVmkQy1ivUbni6NqqUFgy_yRLG0kNpfABvBlbd-KGsrj8LEAvdsIKXrJ_g6zdyIO8_PeNeiBOZQrmEicMudGwr3Ep2YmETnx1V5wkgX0AQ1v4xQSbjrA_xJOtN-roxDqkPuMHWokKPbokWmhR5Pwd12wZXqVV08T5FebzV7k5t1BvBUxoOJ-soEzwIgsBbMtyZ2U9pj2rSonOt9niI9XalG10u1Mb-vnB6LmdtkmU79ti2SMOMfm3XXNuFB9xwIgfX5D4qnSbU_vLgTZIQAy9PwVLS5m7evsy03AZr2-KIAwMMA9LyzzVKs1xn_iY5p0seg4zM-rmnPrfx0iA")
      : throw 'Could not launch http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K8983918U4&tokenCaptchar=03AGdBq26dQqrQ0WXlf4wT59KmWvJk-jDkEFSnRPynkRz21E72LDGIsJb5FhhHaaqm2HuN2BJncSKPqNSn4kmdmDbXZC8jdHBsjqN_Gqg_XMkEWGlG-bkO4sLBuGPCd-u45ywSMZPh9KGJhiOoHP_4G2bKqdGHnvqujCBhb9cHzEwj3FZunZ77oopDO2_O6Hp05Hp58GlhKd_Qll52AEVmkQy1ivUbni6NqqUFgy_yRLG0kNpfABvBlbd-KGsrj8LEAvdsIKXrJ_g6zdyIO8_PeNeiBOZQrmEicMudGwr3Ep2YmETnx1V5wkgX0AQ1v4xQSbjrA_xJOtN-roxDqkPuMHWokKPbokWmhR5Pwd12wZXqVV08T5FebzV7k5t1BvBUxoOJ-soEzwIgsBbMtyZ2U9pj2rSonOt9niI9XalG10u1Mb-vnB6LmdtkmU79ti2SMOMfm3XXNuFB9xwIgfX5D4qnSbU_vLgTZIQAy9PwVLS5m7evsy03AZr2-KIAwMMA9LyzzVKs1xn_iY5p0seg4zM-rmnPrfx0iA';
  void urlLaunchLinkendIn() async =>
      await canLaunch("https://www.linkedin.com/in/enio-barbosa/")
          ? await launch("https://www.linkedin.com/in/enio-barbosa/")
          : throw 'Could not launch https://www.linkedin.com/in/enio-barbosa/';

  void urlLaunchTodoGetX() async =>
      await canLaunch("https://github.com/enioluciano/todoGetX")
          ? await launch("https://github.com/enioluciano/todoGetX")
          : throw 'Could not launch https://github.com/enioluciano/todoGetX';

  void urlLaunchPortifolioWeB() async => await canLaunch(
          "https://github.com/enioluciano/portifolio-flutter-web")
      ? await launch("https://github.com/enioluciano/portifolio-flutter-web")
      : throw 'Could not launch  https://github.com/enioluciano/portifolio-flutter-web';

  void urlLaunchDesignaJw() async => await canLaunch(
          "https://play.google.com/store/apps/details?id=br.com.designajw.designa_jw")
      ? await launch(
          "https://play.google.com/store/apps/details?id=br.com.designajw.designa_jw")
      : throw 'Could not launch https://play.google.com/store/apps/details?id=br.com.designajw.designa_jw';

  void urlLaunchRelatorioJw() async => await canLaunch(
          "https://play.google.com/store/apps/details?id=br.com.relatorioJw.relatorioJw")
      ? await launch(
          "https://play.google.com/store/apps/details?id=br.com.relatorioJw.relatorioJw")
      : throw 'Could not launch https://play.google.com/store/apps/details?id=br.com.relatorioJw.relatorioJw';

  void urlLaunchMobiance() async => await canLaunch(
          "https://play.google.com/store/search?q=jw%20Relatorio&hl=pt_BR&gl=US")
      ? await launch(
          "https://play.google.com/store/search?q=jw%20Relatorio&hl=pt_BR&gl=US")
      : throw 'Could not launch https://play.google.com/store/search?q=jw%20Relatorio&hl=pt_BR&gl=US';

  void urlLaunchPokemon() async => await canLaunch(
          "https://github.com/enioluciano/ProjetoPokemon")
      ? await launch("https://github.com/enioluciano/ProjetoPokemon")
      : throw 'Could not launch https://github.com/enioluciano/ProjetoPokemon';

  verifyDarkModeHour() {
    if (DateTime.now().hour >= 18 || DateTime.now().hour <= 6) {
      if (!Get.isDarkMode) ThemeService().changeThemeMode();
    } else {
      if (Get.isDarkMode) ThemeService().changeThemeMode();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    verifyDarkModeHour();
  }
}
