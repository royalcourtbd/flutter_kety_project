import 'package:flutter/material.dart';
import 'package:flutter_kety_project/constraint/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 90,
      leading: Image.asset(
        'assets/images/logo.png',
        width: 20,
        color: Colors.white,
      ),
      actions: [
        Icon(
          Icons.search,
          size: 28,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.shopping_cart,
          size: 28,
        ),
        SizedBox(
          width: 15,
        ),
      ],
      backgroundColor: AppColor.mainColor,
      elevation: 0.0,
    );
  }
}
