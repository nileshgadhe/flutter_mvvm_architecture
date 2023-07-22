import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../resource/assets/icon_assets.dart';
import '../resource/colors/app_colors.dart';
import '../resource/components/settings_item.dart';
import '../resource/routes/routes_names.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('Help'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
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
                name: 'Support',
                icon: IconAssets.supportIcon,
                onPressed: ()=> onItemPressed(context, index: 0)
            ),
            SizedBox(height: 10),
            SettingItem(
                name: 'FAQs',
                icon: IconAssets.faqIcon,
                onPressed: ()=> onItemPressed(context, index: 1)
            )
          ],
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    switch (index){
      case 0:
        Get.toNamed(RoutesName.supportScreen);
        break;
      default:
      //Get.back();
        break;
    }
  }
}
