import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.isDarkMode ? Colors.grey[700] : Colors.lightBlueAccent[100],
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Copyright © ${DateTime.now().year} - Ênio Luciano',
            style: TextStyle(
                color: Get.isDarkMode ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Feito em Flutter"),
              Icon(
                Icons.favorite,
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
