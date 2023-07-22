import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomeAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.white,
    required this.leftIconButton

  }) : super(key: key);

  final String title;
  final Color backgroundColor;
  final IconButton leftIconButton;

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(icon: leftIconButton, color: AppColors.primaryColor, onPressed: () {}),
    );
  }
}
