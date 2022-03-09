import 'package:flutter/material.dart';
import 'package:flutter_kety_project/dimension/text_size.dart';

class HeadingText extends StatelessWidget {
  String text;

  HeadingText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: TextSize.headLindText,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
