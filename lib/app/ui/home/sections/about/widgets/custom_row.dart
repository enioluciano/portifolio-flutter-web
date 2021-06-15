import 'package:flutter/material.dart';
import 'package:portifolio_flutter_web/app/ui/util/preferences.dart';

class CustomRow extends StatelessWidget {
  final String text;
  CustomRow({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.arrow_right, color: colorB),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
