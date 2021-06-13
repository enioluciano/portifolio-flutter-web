import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // iconTheme: IconThemeData(color: corAppBar),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        "Seja Bem-vindo!",
        style: TextStyle(color: colorB),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(
              Icons.nights_stay_outlined,
              color: Colors.deepPurple,
            ),
            onPressed: () {})
      ],
    );
  }
}
