import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

Widget FacebookButton({
  text = "...",
  textColor = Colors.white,
  buttonColor = Colors.grey,
  fontSize = 16.0,
  fontWeight = FontWeight.bold,
  function,
}) {
  return InkWell(
    onTap: function,
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(
                40.r,
              ),
              color: buttonColor,
            ),
            height: 60.h,
            child: Row(
              children: [
                Expanded(child: Container()),
                Center(
                  child: customText(
                    text: text,
                    textColor: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ),
              SizedBox(width: 68.w,),
              Image.asset("assets/facebookIcon.png"),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}