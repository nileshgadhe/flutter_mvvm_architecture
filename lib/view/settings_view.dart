import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../resource/assets/icon_assets.dart';
import '../resource/colors/app_colors.dart';
import '../resource/components/settings_item.dart';
import '../resource/routes/routes_names.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('Settings'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(
          color: AppColors.primaryColor, //change your color here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            //headerWdiget(),
            SizedBox(height: 10),
            SettingItem(
                name: 'My Profile',
                icon: IconAssets.profileIcon,
                onPressed: ()=> onItemPressed(context, index: 0)
            ),
            SizedBox(height: 10),
            SettingItem(
                name: 'Select Map',
                icon: IconAssets.mapIcon,
                onPressed: ()=> onItemPressed(context, index: 1)
            ),
            SizedBox(height: 10),
            SettingItem(
                name: 'Legal',
                icon: IconAssets.legalIcon,
                onPressed: ()=> onItemPressed(context, index: 2)
            ),
            SizedBox(height: 10),
            SettingItem(
                name: 'Change Language',
                icon: IconAssets.languageIcon,
                onPressed: ()=> onItemPressed(context, index: 3)
            )
          ],
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    switch (index){
      case 0:
        Get.toNamed(RoutesName.profileScreen);
        break;
      case 3:
        Get.toNamed(RoutesName.changeLanguageScreen);
        break;
      default:
      //Get.back();
        break;
    }
  }
}
