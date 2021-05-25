import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio_flutter_web/app/models/key.dart';
import 'package:portifolio_flutter_web/app/ui/home/home_controller.dart';

class SkillPage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: JosKey.keySkill,
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Skills",
                style: TextStyle(fontSize: 60),
              )),
          SizedBox(
            height: 50,
          ),
          LayoutBuilder(builder: (context, constraits) {
            return Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: constraits.maxWidth * 0.8,
                child: GridView.builder(
                    itemCount: controller.list.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 100,
                        mainAxisSpacing: 50),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    // horizontal: constraits.maxWidth >= tabletBreakPoint ? 0 : 16),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.blue[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [controller.list[index]],
                        ),
                      );
                    }),
              ),
            );
          })
        ],
      ),
    );
  }
}
