import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'custom_text.dart';

class carosoulCustomContainer extends StatelessWidget {
  String? image;
String text1="Welcome";
String text2="30% off";
String text3="Shop now";
String buttonText;

  carosoulCustomContainer({this.image, required this.text1, required this.text2, required this.text3,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: 380.w,
        height: 230.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: homeContainerColor),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 10.w),
          child: Column(

            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    customText(
                        text: text1,
                        fontSize: 20.sp,
                        textColor: purpleContainer,
                        fontWeight: FontWeight.bold),
SizedBox(width: 50.w,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(

                  children: [
                    customText(
                        text: text2,
                        fontSize: 20.sp,
                        textColor: purpleContainer,
                        fontWeight: FontWeight.bold),

                    Expanded(child: Container()),
                    Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      width: 100.w,
                      child: Text(
                        buttonText,
                        style: GoogleFonts.roboto(
                            color: mainTextColor),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: purpleContainer,
                          borderRadius:
                          BorderRadius.circular(15.r)),
                    ), ],
                ),
              ),

              /**
               * The Image
               */
              Container(
                  height: 180.h,
                  width: 300.w,
                  decoration:BoxDecoration(image:  DecorationImage(
                    image:AssetImage(image??"assets/boy.png"),))
              )

            ],
          ),
        ),
      ),
    );
  }
}