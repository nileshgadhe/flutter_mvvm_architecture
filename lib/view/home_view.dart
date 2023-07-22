import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:mvvm_architecture/view/drawer_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerView(),
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        //automaticallyImplyLeading: false,
        title: Text('home'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
