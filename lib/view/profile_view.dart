import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import '../resource/assets/image_assets.dart';
import '../resource/components/input_textfield.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width - 40;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('My Profile'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(
          color: AppColors.primaryColor, //change your color here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                //key: formKey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(ImageAssets.profilePlaceholder),
                        ),
                        SizedBox(height: 5),
                        Text('#12345', style: TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.bold), textDirection: TextDirection.ltr),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: width,
                      child: Text('First Name'.tr, style: const TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: width,
                      child: const Text('Steve', style: TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    //SizedBox(height: 10),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Container(
                      width: width,
                      child: Text('Last Name'.tr, style: const TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: width,
                      child: const Text('Smith', style: TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    //SizedBox(height: 10),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Container(
                      width: width,
                      child: Text('Phone Number'.tr, style: TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: width,
                      child: const Text(''
                          '+91 9876543210', style: TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Container(
                      width: width,
                      child: Text('Email'.tr, style: const TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: width,
                      child: Text('abc@gmail.com', style: const TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Container(
                      width: width,
                      child: Text('Post Code'.tr, style: TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: width,
                      child: const Text('123456', style: TextStyle(fontSize: 17, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    //SizedBox(height: 10),
                    const Divider(color: Colors.grey),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
