import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meecade/view/electronic_shop_screen.dart';
import 'package:meecade/widgets/custom_home_container.dart';
import '../constants.dart';
import 'custom_text.dart';

class ElectronicCustomCarousel extends StatelessWidget {
  String? image;
  String text1="Welcome";




  ElectronicCustomCarousel({
      this.image, required this.text1,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(

        width: 380.w,
        height: 230.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
          ),
            borderRadius: BorderRadius.circular(15.r),
            color: homeContainerColor),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, ),
          child: Column(

            children: [
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText(
                      text: text1,
                      fontSize: 20.sp,
                      textColor: Colors.white
                      ,
                      fontWeight: FontWeight.bold),

                ],
              ),


              /**
               * The Image
               */
             Padding(
               padding:EdgeInsets.only(top: 30.h),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                     onTap: (){
                      // Get.to(ElectronicShopScreen());
                     },
                       child: customHomeContainer(title: "Electronics",image: "assets/electronic.png",)),
                   SizedBox(width: 20.w,),
                   customHomeContainer(title: "Gadgets",image: "assets/laptop.png",),
                   SizedBox(width: 20.w,),
                   customHomeContainer(title: "Gadgets",image: "assets/laptop.png",),
                 ],
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}