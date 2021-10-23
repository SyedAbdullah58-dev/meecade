import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/view/register_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/facebook_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
     CustomMainContainer(child: Column(children: [
       Padding(
         padding: EdgeInsets.only(top: 30.h),
         child: Container(

             height: 40.h,
             child: Text("Login",style: GoogleFonts.roboto(fontSize: 36.sp,color: gradientColors[0],),),),
       ),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 25.w,vertical: 48.h),
         child: Column(
           children: [
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
        child: customTextFormFiled(text: "Phone"),
      ),
      Padding(
        padding:  EdgeInsets.only(bottom: 39.h),
        child: customButton(text: "Sign in",buttonColor:mainTextColor ,textColor: purpleContainer,fontSize: 24.sp ),
      ),
      Padding(
        padding:  EdgeInsets.only(bottom: 39.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            customText(text: "Don't have an account?",fontSize: 18.sp,textColor: Colors.white),
            InkWell(
                onTap: (){
                  Get.to(RegisterScreen());
                },
                child: customText(text: " Register",fontSize: 18.sp,textColor: gradientColors[0])),
          ],
        ),
      ),
             Padding(
               padding:  EdgeInsets.only(bottom: 39.h),
               child: FacebookButton(text: "Facekbook",buttonColor:facebookbutton ,textColor: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.normal ),
             ),
           ],
         ),
       )
     ],),),


      ]

        ,),

    );
  }
}

