import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meecade/controllers/bottom_nav_bar_controller.dart';
import 'package:meecade/controllers/cart_controller.dart';
import 'package:meecade/view/place_order_screen.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainTextColor,
        title: Text("Order Details"),
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
          SizedBox(width: 20.w,)
        ],
      ),
      body: Container(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  children: [
                    customText(
                        text: "My Cart",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              Container(
                height: 110.h,
                decoration: BoxDecoration(
                    color: mainTextColor,
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
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customText(
                            text: "Delivery Location",
                            fontSize: 18.sp,
                            textColor: purpleContainer,
                            fontWeight: FontWeight.bold),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            Container(width: 50.w,height: 40.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: Colors.white)
                              ,child: Icon(Icons.add_location,color: Colors.purple,),),
                            SizedBox(width: 10.w,),Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                customText(text: "2 Phase street 6 Ahmed Abad",fontWeight: FontWeight.bold,fontSize: 20.sp),
                                customText(text: "Rajanpor, india",fontWeight: FontWeight.bold,fontSize: 10.sp,textColor: Color(0xffC4C4C4)),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              /**
               * Forward arrow
               */
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 10.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_forward_ios)
                  ],),
              ),
              /**
               * Divider
               */
              SizedBox(height: 25.h,),
Divider(color: mainTextColor,height: 1.h,thickness: 2.h,),
              /**
               * Payment methods
               */
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                child: Row(
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  customText(text: "Payment Methods",fontSize: 20.sp,fontWeight: FontWeight.bold),
                      SizedBox(height: 5.h,),
                  Row(
                    children: [

                      Container(width: 50.w,height: 40.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: Colors.white)
                        ,child: Image.asset("assets/visa.png"),),SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [

                          customText(text: "Visa Calssic",fontWeight: FontWeight.bold,fontSize: 20.sp),
                          customText(text: "****092111",fontWeight: FontWeight.bold,fontSize: 10.sp,textColor: Color(0xffC4C4C4)),
                        ],
                      ),
                    ],
                  ),
                      SizedBox(height: 40.h,),
                      /**
                       * Order info
                       */

                      Column(
                        children: [
                          customText(text:"Order Info",fontSize: 20.sp,fontWeight: FontWeight.bold,textColor: purpleContainer),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Row(
                              children: [
                                customText(text:"Order Info",fontSize: 16.sp,fontWeight: FontWeight.bold,textColor: purpleContainer),
                        SizedBox(width: 80.w,) ,customText(text:"Rs 650",fontSize: 16.sp)

                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Row(
                              children: [
                                customText(text:"Shipping Cost",fontSize: 16.sp,fontWeight: FontWeight.bold,textColor: purpleContainer),
                        SizedBox(width: 60.w,) ,customText(text:"Rs 250",fontSize: 16.sp)

                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Row(
                              children: [
                                customText(text:"Total",fontSize: 16.sp,fontWeight: FontWeight.bold,textColor: purpleContainer),
                        SizedBox(width: 100.w,) ,customText(text:"Rs 850",fontSize: 16.sp)

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h,),


                ],)],),
              ),
              Divider(color: mainTextColor,height: 1.h,thickness: 2.h,),

              /**
               * Promo Button
               */

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 36.h,width: 136.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.r)

                        ),child: customText(textColor: mainTextColor,text: "Promo"),
                      ),
                    ),
                  ],
                ),
              ),
              /**
               * Confirm order button
               */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: (){
                    Get.to(PlaceOrderScreen());
                  },
                    child: Container(
                      width: 244.w,
                      height: 48.h,
                      alignment: Alignment.center,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [


                          Icon(Icons.check_circle,color: mainTextColor,)
                          ,   SizedBox(width: 10.w,),
                          customText(text: "Confirm Order",textColor: mainTextColor,fontSize: 20.sp),





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

        ),
      ),

    );
    ;
  }
}
