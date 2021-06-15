import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../home_controller.dart';

class ContactPageTablet extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Divider(height: 3, thickness: 3, color: colorB),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Contato",
                    style: TextStyle(
                      fontSize: 45,
                      color: corSection,
                      fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline
                    ),
                  )),
            ),
            Expanded(
              child: Divider(
                height: 3,
                thickness: 3,
                color: colorB,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                controller.setLocalHover();
                print(value);
                // setState(() {
                //   isHovered = value;
                // });
              },
              child: Obx(() => Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        //                   <--- left side
                        // color: Colors.blue,
                        color: controller.getLocalHover
                            ? Get.isDarkMode
                                ? corDeepOrange
                                : Colors.green
                            : Colors.blue,
                        width: 3.0,
                      )),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 70),
                        Text("Parnaíba - PI"),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              width: 45,
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {
                print(value);
                controller.setPhoneHover();
                // setState(() {
                //   isHovered = value;
                // });
              },
              child: Obx(() => Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        //                   <--- left side

                        color: controller.getPhoneHover
                            ? Get.isDarkMode
                                ? corDeepOrange
                                : Colors.green
                            : Colors.blue,
                        width: 3.0,
                      )),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, size: 70),
                        Text("(86) 9 9452-8588"),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              width: 45,
            ),
            InkWell(
              onTap: () {},
              onHover: (value) {
                print(value);
                controller.setEmailHover();
                // setState(() {
                //   isHovered = value;
                // });
              },
              child: Obx(() => Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),

                      border: Border(
                          bottom: BorderSide(
                        //                   <--- left side

                        color: controller.getEmailHover
                            ? Get.isDarkMode
                                ? corDeepOrange
                                : Colors.green
                            : Colors.blue,
                        width: 3.0,
                      )),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email, size: 70),
                        Text("eniolucianoo@gmail.com"),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        )
      ],
    );
  }
}
