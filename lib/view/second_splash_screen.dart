import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/view/first_introduction_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text.dart';
import '../constants.dart';
import 'login_screen.dart';

class SecondSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(
    children: [
    Padding(
    padding: EdgeInsets.only(top: 35.h,right: 10.w),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text("Skip",style: TextStyle(fontSize: 20.sp),)
    ],),
    ),
    Column(

    children: [
      Container(height: 50.h,width: 100.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/meecado.png")
        )
      ),
      )
,
      Row(
        children: [
          SizedBox(width: 20.w,),
          customText(text: "Enjoy",textColor: mainTextColor,fontWeight:FontWeight.bold,fontSize: 45.sp),
        ],
      ),
/*Text on Screen*/


    /*Image*/
    Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
        height: 758.h,

        decoration: BoxDecoration(
        image:DecorationImage(
        image:  AssetImage("assets/Vector.png")
        )
        ),
        ),
        Container(
          height: 472.h,
          width: 566.w,
          decoration: BoxDecoration(

              image:DecorationImage(
                  image:  AssetImage("assets/lady.png")
              )
          ),
        ),
        Positioned(bottom: 5.h,left: 10.w,
          child: Row(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(FirstItroductionScreen());

                    },
                    child: Container(
                      width: 47.w,
                      height: 47.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: mainTextColor,width: 4.r),
                      ),
                      child: Icon(Icons.arrow_forward,color: mainTextColor,size: 18.w,),
                    ),
                  ),
                  SizedBox(height: 30.h,
                  ),
                  Container(
                    width: 126.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: mainTextColor
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),




    ],
    )
    ],),

    );
  }
}
