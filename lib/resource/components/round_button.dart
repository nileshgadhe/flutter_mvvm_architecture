import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class RoundButton extends StatelessWidget{

  const RoundButton({
    Key? key,
    this.buttonColor = AppColors.primaryColor,
    this.textColor = AppColors.whiteColor,
    required this.title,
    required this.onPress,
    this.width = 60,
    this.height = 50,
    this.loading = false
  }) : super(key: key);

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(4)
          ),
          child: loading?
          Center(child: CircularProgressIndicator()):
          Center(
            child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.buttonTitleColor)),//Text(title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
          )

      ),
    );
  }
}