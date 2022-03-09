import 'package:flutter/cupertino.dart';
import 'package:flutter_kety_project/constraint/color.dart';
import 'package:flutter_kety_project/model/item_model.dart';

class CustomsRow extends StatelessWidget {
  String image;
  String leble;
  Color color;
  CustomsRow({
    required this.image,
    required this.leble,
    this.color = AppColor.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // width: width * 0.5,
          // color: AppColor.mainColor,
          // alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      'assets/images/' + image,
                      // height: 45,
                      // width: 45,
                      scale: 6,
                    ),
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(08)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(leble)
            ],
          ),
        )
      ],
    );
  }
}
