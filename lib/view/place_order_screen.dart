import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meecade/view/payment_details_screen.dart';
import 'package:meecade/widgets/custom_heading_tile.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';

class PlaceOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainTextColor,
        title: Text("Cart"),
        actions: [
          /* GestureDetector(
      onTap: () {
       Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
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
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            /**
           * First Section
           */
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Row(
                children: [
                  customText(
                      text: "Delivery at Home",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText(
                            text: "2 Phase street 6 Ahmed Abad",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                        SizedBox(
                          width: 15.w,
                        ),
                        customText(
                            textColor: Colors.purple,
                            text: "change",
                            fontSize: 12.sp)
                      ],
                    ),
                    customText(
                        text: "Rajanpor, india",
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        textColor: Color(0xffC4C4C4)),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),

            /**
           * Divider
           */
            Divider(
              thickness: 2.h,
            )
            /**
           * Second Section
           */
            ,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 38.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.purple),
                        child: customText(
                            text: "Pro",
                            textColor: mainTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      customText(
                          text: "Benefits of this Order",
                          textColor: purpleContainer,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.purple,
                        size: 30.r,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      customText(
                          text: "Faster Delivery",
                          textColor: purpleContainer,
                          fontSize: 20.sp),
                      SizedBox(
                        width: 100.w,
                      ),
                      customText(textColor: Colors.purple, text: "5-10 min")
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2.h,
            )
            /**
           * Third Section
           */

            ,
            Column(
              children: [
                customText(
                    text: "Order Info",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    textColor: purpleContainer),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                          text: "Item Total",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          textColor: purpleContainer),
                      SizedBox(
                        width: 90.w,
                      ),
                      customText(
                          text: "Rs 650",
                          fontSize: 16.sp,
                          textColor: Colors.purple)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                          text: "Delivery Charges",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          textColor: purpleContainer),
                      SizedBox(
                        width: 60.w,
                      ),
                      customText(
                          text: "Rs 250",
                          fontSize: 16.sp,
                          textColor: Colors.purple)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                          text: "Packing Charges",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          textColor: purpleContainer),
                      SizedBox(
                        width: 60.w,
                      ),
                      customText(
                          text: "Rs 850",
                          fontSize: 16.sp,
                          textColor: Colors.purple)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                          text: "Grant Total",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          textColor: purpleContainer),
                      SizedBox(
                        width: 60.w,
                      ),
                      customText(
                          text: "Rs 850",
                          fontSize: 16.sp,
                          textColor: Colors.purple)
                    ],
                  ),
                ),
                /**
               * Divider
               */
                Divider(
                  thickness: 2.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
                    children: [
                      Container(
                        width: 50.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white),
                        child: Image.asset("assets/visa.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              customText(
                                  text: "Pay using",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                /**
               * button
               */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(PaymentDetialsScreen());
                      },
                      child: Container(
                        width: 244.w,
                        height: 48.h,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(
                                text: "Place Order",
                                textColor: mainTextColor,
                                fontSize: 20.sp),
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: mainTextColor,
                              size: 20.r,
                            ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
