import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/controllers/cart_controller.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';

class OrderSummaryScreen extends StatelessWidget {
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Row(
              children: [
                InkWell(
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
                    height: 45.h,
                    width: 70.w,
                    child: Icon(
                      Icons.arrow_back,
                      size: 40.r,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          customText(
              text: "Order Summary!",
              fontWeight: FontWeight.bold,
              textColor: purpleContainer,
              fontSize: 26.sp),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 110.h,
            decoration: BoxDecoration(
                border: Border.all(color: mainTextColor),
                borderRadius: BorderRadius.circular(15.r)),
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  width: 79.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/headset.png")),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText(
                        text: "Awsome Electronics",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                    Row(
                      children: [
                        customText(
                            text: "Head Phones",
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                        SizedBox(
                          width: 120.w,
                        ),
                        GetBuilder<CartController>(builder: (controller) {
                          return Container(
                            padding: EdgeInsets.only(right: 30.w),
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (controller.counter != 0)
                                      controller.counter -= 1;
                                    controller.update();
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    size: 20.r,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: customText(
                                      text: controller.counter.toString()),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.counter += 1;
                                    controller.update();
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    size: 20.r,
                                  ),
                                ),
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                    Row(
                      children: [
                        customText(
                            text: "Rs 650",
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Row(
              children: [
                customText(
                    text: "Total",
                    textColor: purpleContainer,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold),
                Expanded(child: Container()),
                customText(
                    text: "650",
                    textColor: purpleContainer,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold)
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            color: mainTextColor,
            thickness: 2.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          customText(
              text: "Track Order",
              textColor: purpleContainer,
              fontSize: 26.sp,
              fontWeight: FontWeight.bold),
          /**
           * First row
           */
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: purpleContainer, width: 2.w)),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.shopping_bag_rounded,
                  color: mainTextColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Ready to Pick Up Order",
                        textColor: purpleContainer,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                    customText(
                      text: "order 4532 from Gul Ahmed Shop",
                      textColor: purpleContainer,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
                Expanded(child: Container()),
            customText(
              text: "11:00",
              textColor: purpleContainer,
              fontSize: 20.sp,)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [
              Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:25.w,vertical: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle
              ),
            )],),
          ),
          /**
           * Second Row
           */
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              children: [
                Icon(Icons.check_circle,color: Colors.green,size: 25.r,),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.shopping_cart_sharp,
                  color: mainTextColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Order processed",
                        textColor: purpleContainer,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                    customText(
                      text: "We are preparing your order",
                      textColor: purpleContainer,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
                Expanded(child: Container()),
            customText(
              text: "12:00",
              textColor: purpleContainer,
              fontSize: 20.sp,)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          /**
           * third row
           */
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              children: [
                Icon(Icons.check_circle,color: Colors.green,size: 25.r,),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.payment,
                  color: mainTextColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Payment Confirm",
                        textColor: purpleContainer,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                    customText(
                      text: "We are preparing your order",
                      textColor: purpleContainer,
                      fontSize: 20.sp,
                    ),
                  ],
                ),
                Expanded(child: Container()),
            customText(
              text: "1:00",
              textColor: purpleContainer,
              fontSize: 20.sp,)
              ],
            ),
          ),
          /**
           * fourth row
           */
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding:  EdgeInsets.only(left:25.w,top: 5.h),
            child: Row(children: [Container(
              height: 8.h,
              width: 8.w,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle
              ),
            )],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              children: [
                Icon(Icons.check_circle,color: Colors.green,size: 25.r,),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.checklist ,
                  color: mainTextColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Order Placed",
                        textColor: purpleContainer,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                    customText(
                      text: "We are preparing your order",
                      textColor: purpleContainer,
                      fontSize: 18.sp,
                    ),
                  ],
                ),
                Expanded(child: Container()),
                customText(
                  text: "1:00",
                  textColor: purpleContainer,
                  fontSize: 20.sp,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
