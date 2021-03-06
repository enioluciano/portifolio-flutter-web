import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
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
  //  INICIO REPOSIT??RIOS
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

  void urlLaunchTodoGetX() async =>
      await canLaunch("https://github.com/enioluciano/todoGetX")
          ? await launch("https://github.com/enioluciano/todoGetX")
          : throw 'Could not launch https://github.com/enioluciano/todoGetX';

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

  List<Widget> list = [
    Column(
      children: [
        FlutterLogo(
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Flutter"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.gitAlt,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Versionamento Git"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.googlePlay,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Google Play"),
      ],
    ),
    Column(
      children: [
        Icon(
          FontAwesomeIcons.appStore,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Apple Store"),
      ],
    ),
    Column(
      children: [
        FlutterLogo(
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Typescript"),
      ],
    ),
    Column(
      children: [
        FlutterLogo(
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Node Js"),
      ],
    ),
    Column(
      children: [
        FlutterLogo(
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text("GetX"),
      ],
    ),
    Column(
      children: [
        FlutterLogo(
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text("MobX"),
      ],
    ),
  ];
}
