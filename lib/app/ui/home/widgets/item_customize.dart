import 'package:flutter/material.dart';

class ItemCustomize extends StatelessWidget {
  final Function(bool) onHover;
  final Function onTap;
  final bool visible;
  final String text;
  final double width;
  final TextStyle textStyle;
  final Color backgroundColor;

  ItemCustomize(
      {this.onHover,
      this.onTap,
      this.backgroundColor,
      this.visible,
      this.text,
      this.width,
      this.textStyle});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onHover: this.onHover,
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: this.width,
        height: 70,
        child: Stack(
          children: [
            Align(
              child: Text(
                this.text,
                style: this.textStyle,
              ),
            ),
            Positioned.fill(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: this.visible,
                child: CircleAvatar(
                    radius: 4,
                    // height: 2,
                    // width: 20,
                    backgroundColor: this.backgroundColor),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
