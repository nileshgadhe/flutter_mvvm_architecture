import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.onPressed
  }) : super(key: key);

  final String name;
  final String icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image(
              image: AssetImage(icon),
              width: 25,
              height: 25,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(width: 20),
            Container(
              width: width-120,
              child: Text(name, style: TextStyle(fontSize: 15, color: AppColors.blackColor)),
            ),
            const SizedBox(width: 20),
            Icon(Icons.keyboard_arrow_right, color: AppColors.primaryColor)
          ],
        ),
      ),
    );
  }
}
