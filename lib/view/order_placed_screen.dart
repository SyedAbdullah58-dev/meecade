import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/view/order_summary_screen.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text.dart';
import '../constants.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(children: [
        Padding(
          padding:   EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
          child: Row(
            children: [
              InkWell(
                onTap: (){
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
        SizedBox(height: 140.h,),
        customText(text: "Order Placed!",fontSize: 26.sp,textColor: purpleContainer,fontWeight: FontWeight.bold),
        customText(text: "your order was placed successfully!",fontSize: 26.sp,textColor: purpleContainer),
        SizedBox(height: 80.h,),
        Container(
          height: 130.h,
          width: 130.w,
          decoration: BoxDecoration(
            color: Colors.green,shape: BoxShape.circle,
          ),
          child: Icon(Icons.check_sharp,color: Colors.white,size: 80.r,),
        ),
        SizedBox(height: 40.h,),
        customText(text: "Shopping Experience",fontSize: 26.sp,textColor: purpleContainer,fontWeight: FontWeight.bold),
SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

         Container(height: 70.h,width: 58.w,
         decoration: BoxDecoration(
           image: DecorationImage(

             image: AssetImage("assets/smile.png",),fit: BoxFit.cover
           )
         ),
         ),SizedBox(width: 15.w,),
         Container(height: 70.h,width: 58.w,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/sad.png",),fit: BoxFit.cover
           )
         ),
         ),SizedBox(width: 15.w,),
         Container(height: 70.h,width: 58.h,
         decoration: BoxDecoration(
             shape: BoxShape.circle,
           image: DecorationImage(

             image: AssetImage("assets/normal.png",),fit: BoxFit.cover
           )
         ),
         ),SizedBox(width: 10.w,),
         Container(height: 70.h,width: 58.h,
         decoration: BoxDecoration(

           image: DecorationImage(

             image: AssetImage("assets/veryhappy.png",),fit: BoxFit.cover
           )
         ),
         ),SizedBox(width:15.w,),
        ],),
        SizedBox(height: 50.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: (){

              Get.to(OrderSummaryScreen());
            },
              child: Container(
                width: 244.w,
                height: 48.h,
                alignment: Alignment.center,

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [customText(text: "Track Order Status",textColor: mainTextColor,fontSize: 20.sp),





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
    );
  }
}
