import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "News App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      defaultTransition: Transition.rightToLeft,
      initialRoute: "/home",
      getPages: AppRoutes.routes,
    );
  }
}
