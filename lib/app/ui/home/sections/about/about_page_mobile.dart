import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class AboutPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          thickness: 2,
          height: 3,
          color: colorB,
        )),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Sobre mim",
              style: TextStyle(
                  fontSize: 22.0, fontWeight: FontWeight.bold, color: colorB),
              // textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
            child: Divider(
          thickness: 2,
          height: 3,
          color: colorB,
        )),
      ],
    );
  }
}
