import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:get/get.dart';

class Utils {

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessageTop(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      textColor: AppColors.whiteColor,
      gravity: ToastGravity.TOP
    );
  }

  static toastMessageCenter(String message){
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.blackColor,
        textColor: AppColors.whiteColor,
        gravity: ToastGravity.CENTER
    );
  }

  static toastMessageBottom(String message){
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.blackColor,
        textColor: AppColors.whiteColor,
        gravity: ToastGravity.BOTTOM
    );
  }

  static redSnackBar(String title, String message){
    Get.snackbar(
        title,
        message,
        backgroundColor: Colors.red,
        colorText: AppColors.whiteColor
    );
  }

  static greenSnackBar(String title, String message){
    Get.snackbar(
        title,
        message,
        backgroundColor: Colors.green,
        colorText: AppColors.whiteColor
    );
  }
}