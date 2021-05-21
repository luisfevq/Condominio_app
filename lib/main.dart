import 'package:condominio_app/core/theme/theme.dart';
import 'package:condominio_app/data/services/theme_service.dart';
//import 'package:condominio_app/modules/home/home_screen.dart';
import 'package:condominio_app/modules/login/welcomScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: WelcomeScreen(),
    );
  }
}
