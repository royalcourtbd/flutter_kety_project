import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kety_project/constraint/color.dart';

class BottomNavigatonBarImage extends StatelessWidget {
  final String assetImage;

  final bool isSelected;
  BottomNavigatonBarImage({required this.assetImage, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/' + assetImage,
      height: 30,
      width: 30,
      color: isSelected ? AppColor.mainColor : Colors.black,
    );
  }
}
