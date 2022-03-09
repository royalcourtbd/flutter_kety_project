import 'package:flutter/material.dart';
import 'package:flutter_kety_project/constraint/color.dart';
import 'package:flutter_kety_project/pages/account_page.dart';
import 'package:flutter_kety_project/pages/category_page.dart';
import 'package:flutter_kety_project/pages/home_page.dart';
import 'package:flutter_kety_project/pages/notification_page.dart';
import 'package:flutter_kety_project/widget/navigation_bar_image.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    HomePage(),
    CategoryPage(),
    NotificationPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 13),
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.mainColor,
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: BottomNavigatonBarImage(
              assetImage: 'home_icon.png',
              isSelected: 0 == currentIndex,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigatonBarImage(
              assetImage: 'categories_icon.png',
              isSelected: 1 == currentIndex,
            ),
            label: 'Categorie',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigatonBarImage(
              assetImage: 'notification_icon.png',
              isSelected: 2 == currentIndex,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigatonBarImage(
              assetImage: 'account_icon.png',
              isSelected: 3 == currentIndex,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
