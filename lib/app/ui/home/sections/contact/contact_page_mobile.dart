import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';

class ContactPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
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
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    //                   <--- left side
                    // color: Colors.blue,
                    color:
                        controller.getLocalHover ? Colors.green : Colors.blue,
                    width: 2.0,
                  )),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Parnaíba - PI"),
                  ],
                ),
              )),
        ),
        SizedBox(
          height: 25,
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
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    //                   <--- left side

                    color:
                        controller.getPhoneHover ? Colors.green : Colors.blue,
                    width: 2.0,
                  )),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 50),
                    SizedBox(
                      height: 20,
                    ),
                    Text("(86) 9 9452-8588"),
                  ],
                ),
              )),
        ),
        SizedBox(
          height: 25,
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
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),

                  border: Border(
                      bottom: BorderSide(
                    //                   <--- left side

                    color:
                        controller.getEmailHover ? Colors.green : Colors.blue,
                    width: 2.0,
                  )),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, size: 50),
                    SizedBox(
                      height: 20,
                    ),
                    Text("eniolucianoo@gmail.com"),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
