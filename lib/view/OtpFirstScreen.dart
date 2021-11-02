import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/controllers/otp_controller.dart';
import 'package:meecade/view/second_otp_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:meecade/widgets/custom_button.dart';

import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';

class OtpFirstScreen extends StatelessWidget {
  OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 68.w, right: 68.w),
            child: Container(
              height: 250.h,
              width: 291.w,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/meecado.png"))),
            ),
          ),
          CustomMainContainer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: customText(
                        text: "ENTER YOUR MOBILE NUMBER",
                        textColor: gradientColors[0],
                        fontSize: 26.sp),
                  ),
                  GetBuilder<OtpController>(builder: (otpController) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 43.h),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white),
                          height: 200.h,
                          width: 300.w,
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CountryListPick(
                                  initialSelection: otpController.countryCode,
                                  onChanged: (code) {
                                    otpController.countryCode = code.toString();
                                    otpController.update();
                                  },
                                  useUiOverlay: true,
                                ),
                                Divider(
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
SizedBox(width: 80.w,),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          child: TextFormField(
onChanged: (str){
  otpController.update();
},
                                            style: GoogleFonts.roboto(
                                                color: gradientColors[0]),
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: " Phone Number"),
                                            controller: otpController.phoneNo,
                                          ),
                                        ),
                                      ),
                                     GetBuilder<OtpController>(

                                       builder: (optController) {
                                         return otpController.phoneNo.text.length==10? Container(
                                            height: 34.h,
                                            width: 34.w,
                                            decoration: BoxDecoration(
                                              color: Colors.green,shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.check,color: Colors.white,size: 20.r,),
                                          ):Container();
                                       }
                                     )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )),
                    );
                  }),
                  Container(
                    alignment: Alignment.center,
                    child: customText(
                        text:  "A one time Password (OTP) will",fontSize: 18.sp,textColor: gradientColors[0]
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: customText(
                        text:  "be sent to your mobile number",fontSize: 18.sp,textColor: gradientColors[0]
                    ),
                  ),
                  GetBuilder<OtpController>(

                    builder: (otpController) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 40.w,),
                        child: customButton(text: "Send Otp",buttonColor: otpController.phoneNo.text.length==10?mainTextColor:Color(0xffE5E5E5),textColor: purpleContainer,function: (){
                          if( otpController.phoneNo.text.length==10)
                            Get.to(SecondOtpScreen());
                          else
                            return;
                        }),

                      );
                    }
                  ),

                  customText(text: "By tapping send OTP I am agree to",textColor: Color(0xffC9A9FC)),
                  customText(text: "Terms and Condition Privacy & Policy",textColor: Colors.white)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
