import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resource/colors/app_colors.dart';
import '../resource/components/my_journey_item.dart';

class MyJourneyView extends StatelessWidget {
  const MyJourneyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('My Journey'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(
          color: AppColors.primaryColor, //change your color here
        ),
      ),
      body: Container(
        color: Color.fromRGBO(244, 246, 252, 1),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width/2,
                  padding: EdgeInsets.all(20),
                  child: Text('All Journeys (10)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primaryColor),),
                ),
                Container(
                  width: width/2,
                  padding: EdgeInsets.all(20),
                  child: Text('Filter', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primaryColor), textDirection: TextDirection.rtl),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MyJourneyItem();
                  }
              ),
            ),
          ],
        ),
      )
    );
  }
}
