import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/contact/contact_page_mobile.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/contact/contact_page_tablet.dart';
import 'package:portifolio_flutter_web/app/ui/home/sections/contact/contact_page_web.dart';
import 'package:portifolio_flutter_web/app/ui/util/breakpoints.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        key: JosKey.keyContact,
        child: Get.width <= mobileBreakpoint
            ? ContactPageMobile()
            : Get.width < tabletBreakPoint
                ? ContactPageTablet()
                : ContactPageWeb());
  }
}
