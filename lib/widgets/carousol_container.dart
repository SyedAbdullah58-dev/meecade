import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'custom_text.dart';

class carosoulContainer extends StatelessWidget {
String? image;

carosoulContainer({this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: 380.w,
        height: 230.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: homeContainerColor),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 10.w),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      customText(
                          text: "Welcome to Meecado",
                          fontSize: 20.sp,
                          textColor: purpleContainer,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Row(
                    children: [
                      customText(
                          text: "30 % off",
                          fontSize: 20.sp,
                          textColor: purpleContainer,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Row(
                    children: [
                      customText(
                          text: "Grocery Shopping",
                          fontSize: 25.sp,
                          textColor: purpleContainer,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 124.w,
                        child: Text(
                          "Shop Now",
                          style: GoogleFonts.roboto(
                              color: mainTextColor),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: purpleContainer,
                            borderRadius:
                            BorderRadius.circular(15.r)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              Container(
                  height: 180.h,
                  width: 120.w,
                  decoration:BoxDecoration(image:  DecorationImage(
                    image:AssetImage(image??"assets/boy.png"),))
              ),

            ],
          ),
        ),
      ),
    );
  }
}