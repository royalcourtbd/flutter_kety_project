import 'package:flutter/material.dart';
import 'package:flutter_kety_project/widget/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
