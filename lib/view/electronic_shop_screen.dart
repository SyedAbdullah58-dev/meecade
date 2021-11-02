import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/controllers/bottom_nav_bar_controller.dart';
import 'package:meecade/widgets/caroulsol_custom_container.dart';
import 'package:meecade/widgets/carousol_container.dart';
import 'package:meecade/widgets/customOption.dart';
import 'package:meecade/widgets/custom_heading_tile.dart';
import 'package:meecade/widgets/custom_home_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';
import 'package:meecade/widgets/electronic_custom_Carousel.dart';
import 'package:meecade/widgets/product_container.dart';
import '../constants.dart';

class ElectronicShopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget> products=[Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: product_container(image: "assets/headset.png",martName: "Ahmad Electronics",product: "Head Phones",price: "Rs 100",),
    ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: product_container(image: "assets/computer.png",martName: "Ahmad Electronics",product: "Tablets ",price: "Rs 650",),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: product_container(image: "assets/computer.png",martName: "Ahmad Electronics",product: "Tablets ",price: "Rs 650",),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: product_container(image: "assets/computer.png",martName: "Ahmad Electronics",product: "Tablets ",price: "Rs 650",),
      ),

    ];
 return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradientColors,
              )

          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 20.w),
                child: Row(children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    maxRadius: 40.r,
                    backgroundImage: AssetImage(
                        "assets/profilepic.png"
                    ),

                  ),
                  SizedBox(width: 10.w,),
                  customText(text: "Karan k",textColor: Colors.white,fontSize: 20.sp),

                ],),
              ),

              customOption(title: "Home",icon: Icon(Icons.home,color: mainTextColor,),fun: (){

              }),
              customOption(title: "My Orders",icon: Icon(Icons.reorder,color: mainTextColor,)),
              customOption(title: "Fav Destination",icon: Icon(Icons.favorite,color: mainTextColor,)),
              customOption(title: "Contact Us",icon: Icon(Icons.contact_page_outlined  ,color: mainTextColor,)),
              customOption(title: "logout",icon: Icon(Icons.logout,color: mainTextColor,)),
              Expanded(child: Container()),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff38315F),


                ),
                height: 65.h,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText(text: "Settings",textColor: mainTextColor,fontSize: 20.sp,fontWeight: FontWeight.bold),
                    SizedBox(width: 45.w,),
                    customText(text: "Legal",textColor: mainTextColor,fontSize: 20.sp,fontWeight: FontWeight.bold),
                  ],) ,)
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.centerRight,
                image: AssetImage("assets/Vector_2.png"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h,right: 10.w,left: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
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
                  SizedBox(width: 20.w,),
                  Column(
                    children: [
                      customText(text: "Hi, Karan",fontSize: 20.sp,fontWeight: FontWeight.bold),
                      customText(text: "Gul Ahmad Shop",fontSize: 18.sp,),
                    ],
                  ),
                    Expanded(child: Container(),),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profilepic.png"),
                      maxRadius: 30.r,

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 34.h),
                child: Container(
                  width: 400.w,
                  height: 80.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                      color: mainTextColor,width: 2
                    )
                    ),
                  child: ListTile(
                    trailing: Icon(Icons.shopping_cart,size: 30.r,),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Electronics",
                        border: InputBorder.none
                      ),
                    ),
                    leading: Icon(Icons.search,size: 30.r,),
                  )
                ),
              ),
              /**
               * Gul Ahmed Electronics
               */

Padding(
  padding:EdgeInsets.only(top: 10.h,left: 20.w),
  child:   Row(
    children: [
          customHeadingTile(title: "Gul Ahmed Electronics"),
    ],
  ),
),
              /**
               * Container for products
               */
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  height: 180.h,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    scrollDirection: Axis.horizontal,

                    children:products,
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.only(top: 10.h,left: 20.w),
                child:   Row(
                  children: [
                    customHeadingTile(title: "Gul Ahmed Electronics"),
                  ],
                ),
              ),
              /**
               * Container for products
               */
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  height: 180.h,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    scrollDirection: Axis.horizontal,

                    children:products,
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 10.h,left: 20.w),
                child:   Row(
                  children: [
                    customHeadingTile(title: "Gul Ahmed Electronics"),
                  ],
                ),
              ),
              /**
               * Container for products
               */
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  height: 180.h,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    scrollDirection: Axis.horizontal,

                    children:products,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
  );
  }
}




