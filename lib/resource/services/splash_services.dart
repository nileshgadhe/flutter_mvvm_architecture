import 'dart:async';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/routes/routes_names.dart';

class SplashServices{
  void isNotLogin(){
    Timer(const Duration(seconds: 3),
        () => Get.toNamed(RoutesName.loginScreen)
    );
  }
}