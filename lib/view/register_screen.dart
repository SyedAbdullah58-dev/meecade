import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';

import '../constants.dart';
import 'OtpFirstScreen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 68.w,right: 68.w),
          child: Container(
            height: 250.h,
            width: 291.w,
            decoration: BoxDecoration(
                image:DecorationImage(
                    image:  AssetImage("assets/meecado.png")
                )
            ),
          ),
        ),
        CustomMainContainer(child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Container(

                height: 40.h,
                child: Text("Register",style: GoogleFonts.roboto(fontSize: 36.sp,color: gradientColors[0],),),),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w,vertical: 48.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      children: [
                        Text("Full Name",style:GoogleFonts.roboto(fontSize: 22.sp,color: mainTextColor),
                        ),
                      ],

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 10.h,bottom: 23.h),
                    child: customTextFormFiled(text: "First Name"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      children: [
                        Text("Phone Number",style:GoogleFonts.roboto(fontSize: 22.sp,color: mainTextColor),
                        ),
                      ],

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 10.h,bottom: 39.h),
                    child: customTextFormFiled(text: "Phone Number"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 39.h),
                    child: customButton(text: "Sign Up",buttonColor:mainTextColor ,textColor: purpleContainer,fontSize: 24.sp,function: (){
                      Get.to(OtpFirstScreen());
                    } ),
                  ),
              

                ],
              ),
            )
          ],),
        ),),


      ]

        ,),

    );
  }
}
