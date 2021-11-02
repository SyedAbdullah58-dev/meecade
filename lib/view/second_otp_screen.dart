import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/controllers/otp_controller.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
import 'DoneScreen.dart';

class SecondOtpScreen extends StatelessWidget {

OtpController otpController=Get.find<OtpController>();
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 68.w, right: 68.w,top: 70.h,bottom: 40.h),
            child: Container(

              width: 291.w,
            child: customText(
                text: "Confirm OTP",
                textColor: mainTextColor,
                fontSize: 36.sp),
            ),
          ),
          CustomMainContainer(
            child: SingleChildScrollView(
              child:GetBuilder<OtpController>(

                builder: (otpController) {
                  return  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50.h),
                        child: customText(
                            text: "Enter the 4 digit Code",
                            textColor: gradientColors[0],
                            fontSize: 26.sp),
                      ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 7.w),
      child:   Container(
alignment: Alignment.bottomCenter,
        child: TextField(

          maxLength: 1,
          controller: otpController.otp1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.phone,

          decoration: InputDecoration(
counterText: "",


                border: InputBorder.none

          ),

        ),

        height: 60.h,

        width: 61.w,

        decoration: BoxDecoration(

          color: Color(0xffC4C4C4),

          borderRadius: BorderRadius.circular(15.r)

      ),),
    ),
        Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 7.w),
      child:   Container(

        child: TextField(
          controller: otpController.otp2,
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.phone,

          decoration: InputDecoration(

              counterText: "",

            border: InputBorder.none

          ),

        ),

        height: 60.h,
        width: 61.w,

        decoration: BoxDecoration(

          color: Color(0xffC4C4C4),

          borderRadius: BorderRadius.circular(15.r)

      ),),
    ),
        Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 7 .w),
      child:   Container(

        child: TextField(
          controller: otpController.otp3,
keyboardType: TextInputType.phone,
          maxLength: 1,
          textAlign: TextAlign.center,

          decoration: InputDecoration(

              counterText: "",

            border: InputBorder.none

          ),

        ),

        height: 60.h,
        width: 61.w,

        decoration: BoxDecoration(

          color: Color(0xffC4C4C4),

          borderRadius: BorderRadius.circular(15.r)

      ),),
    ),
        Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 7 .w),
      child:   Container(

        child: TextField(
          onChanged: (string){
            otpController.update();
            if(otpController.otp1.text!=""&&otpController.otp2.text!=""&&otpController.otp3.text!=""&&otpController.otp4.text!="")
              Get.to(DoneScreen());
          },
          maxLength: 1,
          controller: otpController.otp4,
          keyboardType: TextInputType.phone,
textAlign: TextAlign.center,
          decoration: InputDecoration(


              counterText: "",
            border: InputBorder.none

          ),

        ),

        height: 60.h,
        width: 61.w,

        decoration: BoxDecoration(

          color: Color(0xffC4C4C4),

          borderRadius: BorderRadius.circular(15.r)

      ),),
    ),
  ],
),
                      Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: customText(fontSize: 18.sp,textColor: gradientColors[0],text: "Enter the OTP code sent to ${otpController.countryCode.toString()}${otpController.phoneNo.text}"),
                      ),
                      Padding(
    padding:  EdgeInsets.only(top: 80.h,left: 24.w,right: 24.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(textColor: mainTextColor,text: "Change Number",fontSize: 18.sp),
                            SizedBox(width: 33.w,),
                            customText(textColor: mainTextColor,text: "00:29",fontSize: 18.sp),
                            SizedBox(width: 33.w,),
                            customText(textColor: mainTextColor,text: "Resend OTP",fontSize: 18.sp),
                          ],
                        ),
                      )

                    ],
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
