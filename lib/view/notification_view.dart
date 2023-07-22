import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resource/assets/icon_assets.dart';
import '../resource/colors/app_colors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('Notification'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
          iconTheme: const IconThemeData(
            color: AppColors.primaryColor, //change your color here
          ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text("Clear All", style: TextStyle(color: Colors.red, fontSize: 15),),
          ),
        ]
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
            return Container(
              decoration: const BoxDecoration(
                //<-- BoxDecoration
                border: Border(bottom: BorderSide(color: Colors.grey),),
              ),
              child: ListTile(
                //leading: Icon(Icons.person, color: Colors.white),
                title: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 5),
                    child: Text('Admin has changed your duty status to OFF.', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500))
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Text('20:45 05 Jun 2023', style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.normal),)
                )
              ),
            );
          }
      ),
    );
  }
}
