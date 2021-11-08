import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find<ThemeController>();
  RxBool isDarkModeOn = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeMode() {
    isDarkModeOn.value = !isDarkModeOn.value;
    print(isDarkModeOn.value);
    if (isDarkModeOn.value) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }

  bool getTheme() {
    return isDarkModeOn.value;
  }

  void updateTheme(bool _isDarkModeOn) {}
}
