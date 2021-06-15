import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

import '../../../home_controller.dart';

class GridViewAppsCustom extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final String title;
  final String image;
  final Function(bool) onHover;
  final Function onTap;
  final Color color;
  final Color textColor;
  final String text;
  final Function onPressed;

  GridViewAppsCustom(
      {this.title,
      this.image,
      this.onHover,
      this.onPressed,
      this.text,
      this.onTap,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: Image.asset(
              // "images/designa.png",
              this.image,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              height: 330,
              width: 210,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // InkWell(
        // hoverColor: Colors.transparent,
        // onHover: this.onHover,
        // onTap: this.onTap,
        // child:
        Container(
          width: 130,
          height: 40,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  // padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all(
                      Get.isDarkMode ? Colors.black : Colors.white),
                  side: MaterialStateProperty.all(BorderSide(
                      width: 1,
                      color: Get.isDarkMode ? Colors.white : Colors.blue[100])),
                  overlayColor: MaterialStateProperty.all(
                      Get.isDarkMode ? Colors.grey[800] : Colors.blue[100])),
              onPressed: this.onPressed,
              child: Text(
                this.text,
                style: TextStyle(
                  color: this.textColor,
                ),
              )),
          // )
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border(
          //         bottom: BorderSide(
          //       //                   <--- left side
          //       // color: Colors.blue,
          //       color: this.color,
          //       // color: controller.getDesignaHover
          //       //     ? Colors.green
          //       //     : Colors.transparent,
          //       width: 3.0,
          //     )),
          //   ),
          //   child: Text("Download App"),
          // ),
        ),
      ],
    );
  }
}
