import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget customTextFormFiled({
  text = '...',
  controller,

  keyboardType = TextInputType.text,
  obscureText = false,
}) {
  return Container(
    height: 60.h,

    decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(
          width: 1.w,
        )),
    child: Center(
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,

        controller: controller,
        style: TextStyle(
          fontSize: 18.sp,
          // color: white,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 20.w,
          ),
          hintStyle: TextStyle(
            fontSize: 18.sp,
            color: Colors.grey,
          ),
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
