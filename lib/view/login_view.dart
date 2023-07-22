import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';
import 'package:mvvm_architecture/resource/components/input_textfield.dart';
import 'package:mvvm_architecture/resource/components/round_button.dart';
import 'package:mvvm_architecture/utilities/utils.dart';
import 'package:mvvm_architecture/view_model/login_viewmodel.dart';
import 'package:flutter/gestures.dart';
import '../resource/routes/routes_names.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginViewModel = Get.put(LoginViewModel());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 40;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      /*
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
       */
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: formKey,
                child: Column(
                  children: [
                    Container(
                      width: width,
                      child: Text('welcome'.tr, style: TextStyle(fontSize: 35, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.bold), textDirection: TextDirection.ltr),
                    ),
                    Container(
                      width: width,
                      child: Text('driver_partner'.tr, style: TextStyle(fontSize: 18, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.w500), textDirection: TextDirection.ltr),
                    ),
                    SizedBox(height: 50),
                    Container(
                      width: width,
                      child: Text('login_id'.tr, style: TextStyle(fontSize: 15, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    SizedBox(height: 10),
                    InputTextField(
                        myController: loginViewModel.emailController.value,
                        focusNode: loginViewModel.emailFocusNode.value,
                        onFiledSubmittedValue: (value){
                          Utils.fieldFocusChange(context, loginViewModel.emailFocusNode.value, loginViewModel.passwordFocusNode.value);
                        },
                        keyBoardType: TextInputType.emailAddress,
                        obscuredText: false,
                        hint: 'login_id'.tr,
                        onValidator: (value){
                          return value.isEmpty ? 'enter_login_id'.tr : null;
                        }
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      child: Text('password'.tr, style: TextStyle(fontSize: 15, color: AppColors.blackColor, decoration: TextDecoration.none, fontWeight: FontWeight.normal), textDirection: TextDirection.ltr),
                    ),
                    SizedBox(height: 10),
                    InputTextField(
                        myController: loginViewModel.passwordController.value,
                        focusNode: loginViewModel.passwordFocusNode.value,
                        onFiledSubmittedValue: (value){

                        },
                        keyBoardType: TextInputType.emailAddress,
                        obscuredText: true,
                        hint: 'password'.tr,
                        onValidator: (value){
                          return value.isEmpty ? 'enter_password'.tr : null;
                        }
                    ),
                  ],
                )
            ),
            SizedBox(height: 25),
            Container(
              width: width,
              child: //Text('For login problem, please contact support.', style: TextStyle(fontSize: 15, color: Colors.grey, decoration: TextDecoration.none, fontWeight: FontWeight.w500), textDirection: TextDirection.ltr),
              RichText(
                text:TextSpan(
                    text: 'for_login_problem_please_contact_'.tr,
                    style: TextStyle(
                        color: Colors.grey, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(text: 'support_dot'.tr,
                          style: TextStyle(color: AppColors.primaryColor, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            // Single tapped.
                            Get.toNamed(RoutesName.supportScreen);
                          },
                      )
                    ]
                ),
              ),
            ),
            SizedBox(height: 50),
            RoundButton(
              title: 'login_caps'.tr,
              width: width,
              height: 50,
              onPress: (){
                  if (formKey.currentState!.validate()){
                    if (loginViewModel.isTextFieldValid()){
                      Get.toNamed(RoutesName.homeScreen);
                    }
                  }
              },
            )
          ],
        ),
      )
    );
  }
}
