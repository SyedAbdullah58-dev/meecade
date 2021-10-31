import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/widgets/common_scaffold.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddtoCartScreen extends StatelessWidget {
  const AddtoCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: mainTextColor,
  title: Text("Gul Ahmed Shop"),
  actions: [
   /* GestureDetector(
      onTap: () {
       Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.white,
            border: Border.all(

              color: gradientColors[0],
            )),
        height: 38.h,
        width: 46.w,
        child: Icon(
          Icons.arrow_back,
          size: 40.r,
        ),
      ),
    ),*/
    Icon(Icons.shopping_cart,size: 30.r,color: Color(0xffA66DA7),)
  ],
),
      body: Container(
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

          Container(
            width: 250.w,
            height: 200.h,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                  image: AssetImage("assets/headset.png")),
                borderRadius: BorderRadius.circular(15.r),
               ),)


            ],

     ),
      ),
    );
  }
}
