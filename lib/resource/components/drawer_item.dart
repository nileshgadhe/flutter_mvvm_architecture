import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
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
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image(
              image: AssetImage(icon),
              width: 20,
              height: 20,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(width: 20),
            Text(name, style: TextStyle(fontSize: 16, color: AppColors.blackColor),)
          ],
        ),
      ),
    );
  }
}
