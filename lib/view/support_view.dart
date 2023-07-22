import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/assets/icon_assets.dart';
import '../resource/colors/app_colors.dart';
import '../resource/components/custome_app_bar.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
       appBar: AppBar(
         backgroundColor: AppColors.whiteColor,
         title: Text('support'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
         iconTheme: const IconThemeData(
           color: AppColors.primaryColor, //change your color here
         ),
       ),
      body: ListView.builder(
          itemCount: 5,
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
                  child: Text('Person Name', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal))
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Text('12345678', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),)
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 40,
                      minHeight: 40,
                      maxWidth: 60,
                      maxHeight: 60,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(IconAssets.callSupportIcon),
                      // No matter how big it is, it won't overflow
                    ),
                  )
                ),
              ),
            );
          }
      ),
    );
  }
}
