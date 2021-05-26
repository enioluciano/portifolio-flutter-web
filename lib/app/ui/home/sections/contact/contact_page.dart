import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class ContactPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keyContact,
      child: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                              ? Colors.green
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
                              ? Colors.green
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
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
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
                        color: Colors.grey[100],
                        // borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: controller.getEmailHover
                                ? Colors.green
                                : Colors.transparent,
                            spreadRadius: 0.3,
                            blurRadius: 5,
                            offset: Offset(0, 0),
                            // changes position of shadow
                          ),
                        ],
                        border: Border(
                            bottom: BorderSide(
                          //                   <--- left side

                          color: controller.getEmailHover
                              ? Colors.green
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
          // Text(
          //   "Contato",
          //   style: TextStyle(
          //       fontSize: 80, color: Colors.grey, fontWeight: FontWeight.bold),
          // ),
          // SizedBox(
          //   height: 40,
          // ),
          // Text(
          //     "Se você quiser conversar, entre em contato, estou quase sempre online =]",
          //     style: TextStyle(fontWeight: FontWeight.w700)),
          // SizedBox(
          //   height: 40,
          // ),
          // Text("Envie uma mensagem", style: TextStyle(fontSize: 25)),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(
          //       FontAwesomeIcons.whatsapp,
          //       color: Colors.green,
          //     ),
          //     Text("  (86) 9 9452-8588",
          //         style: TextStyle(fontWeight: FontWeight.w400)),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(
          //       FontAwesomeIcons.instagram,
          //       color: Colors.grey,
          //     ),
          //     Text("  @enio.luciano",
          //         style: TextStyle(fontWeight: FontWeight.w400)),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(
          //       Icons.email,
          //       color: Colors.grey,
          //     ),
          //     Text("  eniolucianoo@gmail.com",
          //         style: TextStyle(fontWeight: FontWeight.w400)),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
