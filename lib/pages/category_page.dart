// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_kety_project/constraint/color.dart';
import 'package:flutter_kety_project/pages/account_page.dart';
import 'package:flutter_kety_project/pages/home_page.dart';
import 'package:flutter_kety_project/pages/notification_page.dart';
import 'package:flutter_kety_project/widget/custom_app_bar.dart';

import 'package:flutter_kety_project/widget/custom_row.dart';
import 'package:flutter_kety_project/widget/heading_text.dart';
import 'package:flutter_kety_project/widget/navigation_bar_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: height,
            width: width,
            color: AppColor.mainColor,
            child: SvgPicture.asset(
              'assets/images/undraw_woman_mevk.svg',
              //alignment: Alignment.topCenter,
              width: width * 0.55,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.3),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: HeadingText(text: 'Categories'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomsRow(
                          image: 'rank.png',
                          leble: 'RANK',
                          color: Color(0xfffff9e0),
                        ),
                        CustomsRow(
                          image: 'hot.png',
                          leble: 'HOT',
                          color: Color(0xffffede5),
                        ),
                        CustomsRow(
                          image: 'loved.png',
                          leble: 'LOVED',
                          color: Color(0xfff7eaf5),
                        ),
                        CustomsRow(
                          image: 'secrets.png',
                          leble: 'SECRETS',
                          color: Color(0xffe6f0e6),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: HeadingText(text: 'Skin Type'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomsRow(
                          image: 'normal.png',
                          leble: 'NORMAL',
                          color: Color(0xfffff1f5),
                        ),
                        CustomsRow(
                          image: 'dry.png',
                          leble: 'DRY',
                          color: Color(0xffe6f0e6),
                        ),
                        CustomsRow(
                          image: 'oily.png',
                          leble: 'OILY',
                          color: Color(0xfffeefea),
                        ),
                        CustomsRow(
                          image: 'combine.png',
                          leble: 'COMBINE',
                          color: Color(0xfff1eef8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: width - 32,
                          child: ListTile(
                            leading: Image.asset(
                              'assets/images/002-woman.png',
                              scale: 5,
                            ),
                            title: Text('Amelia Nelson'),
                            subtitle: null,
                          ),
                          //color: AppColor.mainColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
