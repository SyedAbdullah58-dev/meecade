
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

Container customOption({String? title, Widget? icon,VoidCallback? fun}) {
  return Container(
    decoration: BoxDecoration(
border: Border.all(
  color: Color(0xff38315F),width: 1.r

),

    ),
    height: 65.h,
    child:Row(children: [
      IconButton(icon: icon??Icon(Icons.home),iconSize: 40.r, onPressed:fun??(){

      }), SizedBox(width: 20.w,),
      customText(text: title,textColor: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),
    ],) ,);
}