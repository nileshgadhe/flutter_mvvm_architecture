import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/assets/image_assets.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:mvvm_architecture/resource/services/splash_services.dart';

import '../resource/components/internet_exception_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isNotLogin();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Image(
          image: AssetImage(ImageAssets.splashImage),
          width: width,
          height: height,
        fit: BoxFit.fitHeight,
      )
    );
  }
}
