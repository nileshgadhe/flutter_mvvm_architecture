import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/assets/icon_assets.dart';
import 'package:mvvm_architecture/resource/assets/image_assets.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class MyJourneyItem extends StatelessWidget {
  const MyJourneyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width-30;

    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: AppColors.whiteColor,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width/2,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
                  child: const Text('Pickup At', style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
                ),
                Container(
                  width: width/2,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
                  child: const Text('4 Pass, WBC', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.blackColor), textDirection: TextDirection.rtl),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: width * 0.6,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                  child: const Text('17:50, 30 Apr 2023', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                ),
                Container(
                  width: width * 0.4,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                  child: const Text('Expired', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.blackColor), textDirection: TextDirection.rtl),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.only(left: 20, right: 0, top: 10, bottom: 5),
                  child: const Image(
                    image: AssetImage(IconAssets.blueDotIcon),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.only(left: 0, right: 20, top: 10, bottom: 5),
                  child: const Text('Pickup', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.blackColor), textDirection: TextDirection.rtl),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 10),
                ),
                Container(
                  width: width-40,
                  padding: const EdgeInsets.only(left: 0, right: 20, top: 0, bottom: 10),
                  child: const Text('Gaikwad Niwas, Dr.Kolte Park Housing Soc, Bus Stop, Nagar, MAharastra', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.blackColor), textDirection: TextDirection.ltr),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.only(left: 20, right: 0, top: 10, bottom: 5),
                  child: const Image(
                    image: AssetImage(IconAssets.redDotIcon),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.only(left: 0, right: 20, top: 10, bottom: 5),
                  child: const Text('Drop Off', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.blackColor), textDirection: TextDirection.ltr),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 10),
                ),
                Container(
                  width: width - 40,
                  padding: const EdgeInsets.only(left: 0, right: 20, top: 0, bottom: 10),
                  child: const Text('Gaikwad Niwas, Dr.Kolte Park Housing Soc, Bus Stop, Nagar, MAharastra', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.blackColor), textDirection: TextDirection.ltr),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: width/2,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                ),
                Container(
                  width: width/2,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                  child: const Text('View Details', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.primaryColor), textDirection: TextDirection.rtl),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
