import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("entrou");
    return AppBar(
      // iconTheme: IconThemeData(color: corAppBar),
      elevation: 0,
      backgroundColor: Colors.white,
      title: RichText(
        text: TextSpan(
          text: '\$',
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue),
          children: <TextSpan>[
            TextSpan(
                text: 'enioluciano',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue)),
            // TextSpan(
            //     text: 'Luciano>',
            //     style: TextStyle(fontSize: 18, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
