import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class InternetExceptionWidget extends StatefulWidget {
  // const InternetExceptionWidget({Key? key}) : super(key: key);
  final VoidCallback onPress;
  const InternetExceptionWidget({Key? key, required this.onPress}) : super(key: key);
  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15,),
          Icon(Icons.cloud_off, color: AppColors.blackColor,),
          Padding(
              padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
                  'internet_exception'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: AppColors.blackColor, decoration: TextDecoration.none),
                )
            ),
          ),
          SizedBox(height: height * .15,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 140,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Text('retry'.tr, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
