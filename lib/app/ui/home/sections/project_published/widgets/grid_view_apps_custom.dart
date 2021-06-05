import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';

class GridViewAppsCustom extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final String title;
  final String image;
  final Function(bool) onHover;
  final Function onTap;
  final Color color;

  GridViewAppsCustom(
      {this.title, this.image, this.onHover, this.onTap, this.color});

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
        InkWell(
          hoverColor: Colors.transparent,
          onHover: this.onHover,
          onTap: this.onTap,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                //                   <--- left side
                // color: Colors.blue,
                color: this.color,
                // color: controller.getDesignaHover
                //     ? Colors.green
                //     : Colors.transparent,
                width: 3.0,
              )),
            ),
            child: Text("Download App"),
          ),
        ),
      ],
    );
  }
}
