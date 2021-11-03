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
      child: Stack(
        children: [
          Column(
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

          Padding(
            padding: EdgeInsets.only(top: 5.h,left: 20.w),
            child: Row(
              children: [
                Container(height: 50.h,width: 200.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/meecado.png")
                  )
                ),
                ),
              ],
            ),
          )
,

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

          ],
    ),




    ],
    )
    ],),
          Opacity(
            opacity: 0.3,
            child: Container(
              height: 1.sh,
              width: 0.6.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight:Radius.circular(112.r),
                  bottomRight:Radius.circular(112.r),
                ),
                  color: Colors.white
              ),

            ),
          ),  Positioned(
            top: 180.h,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20.w,),
                    customText(text: "Enjoy",textColor: mainTextColor,fontWeight:FontWeight.bold,fontSize: 40 .sp),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20.w,),
                    customText(text: "your shopping with us",fontSize: 20 .sp),
                  ],
                ),
              ],
            ),
          ),
          Positioned(bottom: 20.h,left: 10.w,
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

    );
  }
}
