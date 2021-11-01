import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/view/add_to_cart_screen.dart';
import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';
class product_container extends StatelessWidget {
 String martName;
 String product;
 String price;
 String image;

 product_container({required this.martName, required this.product, required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(AddtoCartScreen());
      },
      child: Container(
        width: 155.w,
        height: 180.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors,
            )),
        child: Column(children: [
          Container(height: 100.h,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage(image)
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Container(
                alignment: Alignment.centerLeft,
                width: 122.w,
                child: customText(text: martName,fontSize: 12.sp)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Container(
                alignment: Alignment.centerLeft,
                width: 122.w,
                child: customText(text: product,fontSize: 12.sp,fontWeight: FontWeight.bold)),
          ),

          /**
           * Price and add icons
           */
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Container(
                    alignment: Alignment.centerLeft,

                    child: customText(text: price,fontSize: 12.sp)),
                Expanded(child: Container(),),
                Icon(Icons.add_circle,color: purpleContainer,)
              ],
            ),
          ),

        ],),
      ),
    );
  }
}