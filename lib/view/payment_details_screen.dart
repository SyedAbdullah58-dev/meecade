import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';
import '../constants.dart';
import 'delivery_location_screen.dart';

class PaymentDetialsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: mainTextColor,
        title: customText(text: "Order Details",fontSize: 24.sp),
        actions: [
          /* GestureDetector(
      onTap: () {
       Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
            border: Border.all(

              color: gradientColors[0],
            )),
        height: 38.h,
        width: 46.w,
        child: Icon(
          Icons.arrow_back,
          size: 40.r,
        ),
      ),
    ),*/
          Icon(
            Icons.shopping_cart,
            size: 30.r,
            color: Color(0xffA66DA7),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            /**
             * visa Card
             */
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white),
                    child: Image.asset("assets/visa.png"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),

                ],
              ),
            ),
            Divider(thickness: 2.h,),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white),
                    child: Image.asset("assets/creditcard.png"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 50.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white),

                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h,),

            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                  alignment: Alignment.centerLeft,
                  width: 220.w,
                  child: customText(text: "Credit Holder Name", fontSize: 20.sp)),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 80.w),
              child: customTextFormFiled(text: "Full Name"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                  alignment: Alignment.centerLeft,
                  width: 220.w,
                  child: customText(text: "Card Number", fontSize: 20.sp,)),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 80.w),
              child: customTextFormFiled(text: "Card Number",obscureText: true),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                  alignment: Alignment.centerLeft,
                  width: 220.w,
                  child: customText(text: "Valid Until", fontSize: 20.sp)),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 80.w),
              child: customTextFormFiled(text: "Month/Year"),

            ),
      Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
              alignment: Alignment.centerLeft,
              width: 220.w,
              child: customText(text: "CVC", fontSize: 20.sp)),
      ),
      Padding(
          padding:
          EdgeInsets.symmetric(vertical: 20.h, horizontal: 80.w),
          child: customTextFormFiled(text: "CVC"),),
            /**
             * button
             */
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){
Get.to(DeliveryLocationScreen());
                },
                  child: Container(
                    width: 244.w,
                    height: 48.h,
                    alignment: Alignment.center,

                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [



                        customText(text: "Pay Now",textColor: mainTextColor,fontSize: 20.sp),





                      ],



                    ),

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15.r),

                      color: purpleContainer,



                    ),



                  ),
                ),
              ],
            ),
          ],),
        ),

      ),
    );
  }
}
