import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/assets/icon_assets.dart';
import 'package:mvvm_architecture/resource/assets/image_assets.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:mvvm_architecture/resource/routes/routes.dart';
import 'package:mvvm_architecture/resource/routes/routes_names.dart';
import 'package:mvvm_architecture/resource/components/drawer_item.dart';

import '../resource/components/alert_dialog.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  get context => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              headerWdiget(),
              SizedBox(width: 20),
              DrawerItem(
                  name: 'Home',
                  icon: IconAssets.homeIcon,
                  onPressed: ()=> onItemPressed(context, index: 0)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'My Journeys',
                  icon: IconAssets.myJourneyIcon,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'Dashboard',
                  icon: IconAssets.dashboardIcon,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'Notifications',
                  icon: IconAssets.notificationIcon,
                  onPressed: ()=> onItemPressed(context, index: 3)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'Help',
                  icon: IconAssets.helpIcon,
                  onPressed: ()=> onItemPressed(context, index: 4)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'Settings',
                  icon: IconAssets.settingIcon,
                  onPressed: ()=> onItemPressed(context, index: 5)
              ),
              SizedBox(height: 20),
              DrawerItem(
                  name: 'Sign Out',
                  icon: IconAssets.signOutIcon,
                  onPressed: ()=> onItemPressed(context, index: 6)
              ),
              SizedBox(height: 20),
            ],
          ),
        )
      ),
    );
  }
  void onItemPressed(BuildContext context, {required int index}){
    Get.back();
    switch (index){
      case 0:
        Get.toNamed(RoutesName.profileScreen);
        break;
      case 1:
        Get.toNamed(RoutesName.myJourneyScreen);
        break;
      case 3:
        Get.toNamed(RoutesName.notificationScreen);
        break;
      case 4:
        Get.toNamed(RoutesName.helpScreen);
        break;
      case 5:
        Get.toNamed(RoutesName.settingsScreen);
        break;
      case 6:
        showAlertDialog(context);
        break;

      default:
        //Get.back();
        break;
    }
  }
  
  Widget headerWdiget(){
    return Container(
      color: AppColors.primaryColor,
      child: Column(
        children: [
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 20),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(ImageAssets.profilePlaceholder),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Person name', style: TextStyle(fontSize: 18, color: AppColors.whiteColor, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          SizedBox(height: 40)
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    /*
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {},
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Would you like to continue learning how to use Flutter alerts?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
   */


    Widget okButton = TextButton(
      child: const Text("Yes",style: TextStyle(color: AppColors.primaryColor),),
      onPressed: () { SystemNavigator.pop(); },
    );

    Widget nopeButton = TextButton(
      child: const Text("No", style: TextStyle(color: Colors.black)),
      onPressed: () { Navigator.pop(context); },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Sign Out"),
      content: const Text("Are you sure you want to sign out?"),
      actions: [
        nopeButton,
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

    /*
    List<String> alertTitles = <String>['Yes']; DLAlert(
    cancelTitle: 'No', alertTitle: 'Sign Out',
    alertDetailMessage: 'Are you sure you want to sign out?', alertActionTitles:
    alertTitles, onAlertAction: (int selectedActionIndex){
    print('${alertTitles[selectedActionIndex]} action performed');
    Navigator.of(context, rootNavigator: true).pop('dialog');
    }).show(context);

     */
  }
}
