import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/view/first_introduction_screen.dart';
import 'package:meecade/view/second_splash_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CommonScaffold(
      child:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 100.w),
        child: Column(

          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 99.h),
              child: Container(
                height: 476.h,
                width: 476.w,
                decoration: BoxDecoration(

                    image:DecorationImage(
                        image:  AssetImage("assets/meecado.png")
                    )
                ),
              ),
            ),
            SizedBox(height: 21.h,),


            InkWell(
              onTap: (){
                Get.to(FirstItroductionScreen());
              },
              child: Container(
                alignment: Alignment.center,
                width: 194.h,
                height: 75.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 4.r,
                        color: Colors.white
                    ),
                    color: Colors.transparent,

                    borderRadius: BorderRadius.circular(45.r)
                ),
                child: Text(
                  "Get Started"
                  ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.sp),),
              ),
            )
            ,Padding(
              padding: EdgeInsets.only(
                  top: 222.h,bottom:25.h
              ),
              child: Container(
                
                width: 126.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                    color: Color(0xffA66DA7)
                ),
              ),
            )
          ],
        ),
      ),
    );


  }
}


