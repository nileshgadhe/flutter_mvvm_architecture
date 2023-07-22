
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/utilities/utils.dart';
import '../repository/login_repository.dart';

class LoginViewModel extends GetxController{
  final loginRepository = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  bool isTextFieldValid(){
    if (emailController.value.text != '' && passwordController.value.text != ''){
      return true;
    } else{
      return false;
    }
  }

  void loginApi(){
    Map data = {
      '':''
    };
    loginRepository.loginApi(data).then((value){

    }).onError((error, stackTrace){
      Utils.redSnackBar('error'.tr, error.toString());
    });
  }

}