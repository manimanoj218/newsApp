import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:newsapp/controllers/theme/theme.controller.dart';

class HomeScreen extends StatelessWidget {
  final ThemeController settingController =
      GetInstance().put<ThemeController>(ThemeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: context.theme.backgroundColor,
        alignment: Alignment.center,
        child: _playBoard(),
      ),
    );
  }

  Center _playBoard() {
    return Center(
      child: Container(
        height: 515,
        width: 515,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Get.theme.cardColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "News App",
                  style: Get.textTheme.headline1,
                ),
              ],
            ),
            SizedBox(height: 60),
            Column(
              children: [
                Obx(
                  () => CupertinoSwitch(
                    onChanged: (bool _) => settingController.changeMode(),
                    value: settingController.isDarkModeOn.value,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
