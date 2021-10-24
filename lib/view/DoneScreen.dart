import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meecade/controllers/otp_controller.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
import 'home_screen.dart';
class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

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
                  text: "Congratulations",
                  textColor: mainTextColor,
                  fontSize: 36.sp),
            ),
          ),
          CustomMainContainer(
            child: SingleChildScrollView(
              child:Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: customText(
                      text: "Your Account Registered Successfully",
                      textColor: gradientColors[0],
                      fontSize: 26.sp),
                ),
                SizedBox(height: 80.h,),
                Container(
                  height: 130.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    color: Colors.green,shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check_sharp,color: Colors.white,size: 80.r,),
                ),
            Padding(
              padding: EdgeInsets.only(top: 90.h,left: 20.w,right: 20.w),
              child: customButton(text: "Next",textColor: purpleContainer,buttonColor: mainTextColor,function: (){
                Get.to(HomeScreen());}),
            )
              ],)
            ),
          ),
        ],
      ),
    );
  }
}
