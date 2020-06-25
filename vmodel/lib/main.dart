import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vmodel/src/routes/my_routes.dart';
import 'package:vmodel/src/ui/android/splash/splash_page.dart';
import 'package:vmodel/src/ui/theme/my_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.fade,
      theme: appThemeData,
      getPages: MyRoutes.routes,
      home: SplashScreen(),
    )
  );
}

