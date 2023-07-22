import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:mvvm_architecture/resource/localization/languages.dart';
import 'package:mvvm_architecture/resource/routes/routes.dart';
import 'package:mvvm_architecture/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: "MVVM Architecture",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
