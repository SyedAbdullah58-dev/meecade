import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/view/second_introduction_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FirstItroductionScreen extends StatelessWidget {
  const FirstItroductionScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
/*Text on Screen*/
              Padding(
                padding: EdgeInsets.only(top: 74.h,),
                child: Text("Enjoy All\n Items Sale \n with \n \"meecado\"  ",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 32.sp,color: mainTextColor,fontWeight: FontWeight.bold

                ),),
              ),

              /*Image*/
              Container(
                height: 472.h,
                width: 566.w,
                decoration: BoxDecoration(

                    image:DecorationImage(
                        image:  AssetImage("assets/ladyshopping.png")
                    )
                ),
              ),
              
              SizedBox(height: 21.h,
              ),
              InkWell(
                onTap: (){
                  Get.to(SecondIntroductionScreen());

                },
                child: Container(
                  width: 47.w,
                  height: 47.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffA66DA7),width: 4.r),



                  ),
child: Icon(Icons.arrow_forward,color: Color(0xffA66DA7),size: 18.w,),
                ),
              ),
              SizedBox(height: 30.h,
              ),
              Container(
                width: 126.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                    color: Color(0xffA66DA7)
                ),
              ),

            ],
          )
        ],),
    );
  }
}
