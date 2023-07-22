import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/assets/icon_assets.dart';
import '../resource/colors/app_colors.dart';
import '../resource/components/round_button.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('Change Language'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(
          color: AppColors.primaryColor, //change your color here
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index){
            return Container(
              height: 60,
              decoration: const BoxDecoration(
                //<-- BoxDecoration
                border: Border(bottom: BorderSide(color: Colors.grey),),
              ),
              child: ListTile(
                //leading: Icon(Icons.person, color: Colors.white),
                title: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 5),
                    child: Text('English', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold))
                ),
                  trailing: Image(
                    image: AssetImage(IconAssets.tickIcon),
                    width: 20,
                    height: 20,
                    fit: BoxFit.fitWidth,
                  )
              ),
            );
          }
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        color: AppColors.whiteColor,
        height: 50,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: RoundButton(
          title: 'CONFIRM'.tr,
          width: width,
          height: 50,
          onPress: (){

          },
        ),
      ),
    );
  }
}
