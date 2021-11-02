import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/view/edit_profile_screen.dart';
import 'package:meecade/widgets/caroulsol_custom_container.dart';
import 'package:meecade/widgets/carousol_container.dart';
import 'package:meecade/widgets/customOption.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_home_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/electronic_custom_Carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
             customOption(title: "My Fav Destination",icon: Icon(Icons.logout,color: mainTextColor,)),
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
                padding: EdgeInsets.only(top: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(

                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();

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
                                Icons.reorder,
                                size: 40.r,
                              ),
                            ),
                          );
                        }
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 230.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: homeScreenColor,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    CircleAvatar(
                      maxRadius: 20.r,
                      child: Image.asset("assets/profilepic.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 34.h),
                child: Container(
                  width: 400.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: gradientColors,
                      )),
                  child: Row(
                    children: [
                      Container(
                          width: 200.w,
                          child: Image.asset("assets/enjoymeecado.png")),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: customText(
                            text: "Your balance Rs 0",
                            fontSize: 20.sp,
                            textColor: purpleContainer),
                      )
                    ],
                  ),
                ),
              ),
              /**
               * Main container welcome to Meecado
               */
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: CarouselSlider(
                  options: CarouselOptions(
                   scrollDirection: Axis.horizontal,
                  autoPlay: true,
                    enableInfiniteScroll: true
                  ),
                  items: [carosoulContainer(image: "assets/boy.png",),
                    carosoulCustomContainer(image:"assets/sale.png",text1: "50% Sale",text2: "Women's Fashion",text3: "",buttonText: "Shop Now",),
                    carosoulCustomContainer(image:"assets/rider.png",text1: "Welcome to Meecado",text2: "Build Your Order",text3: "",buttonText: "Order",),
                    ElectronicCustomCarousel(text1: "Electronics 10 Categories")

                  ],

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customHomeContainer(
                      title: "Grocery",
                      image: "assets/grocery_1.png",
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    customHomeContainer(
                      title: "Women Fashion",
                      image: "assets/cloth.png",
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    customHomeContainer(
                      title: "child products",
                      image: "assets/childeren.png",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customHomeContainer(
                      title: "Electronics",
                      image: "assets/laptop.png",
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    customHomeContainer(
                      title: "Health and Beauty",
                      image: "assets/can.png",
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    customHomeContainer(
                      title: "Men Fashion",
                      image: "assets/menfashion.png",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 34.h),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: gradientColors,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: customText(
                            text: "Most Popular in October",
                            fontSize: 20.sp,
                            textColor: purpleContainer),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Container(
                  width: 340.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: homeContainerColor),
                  child: Row(
                    children: [
                      /**
                       * Text in the Container
                       */
                      Padding(
                        padding: EdgeInsets.only(top: 10.h,right: 5.w,left: 15.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                customText(
                                    text: "Welcome to Meecado",
                                    fontSize: 20.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            Row(
                              children: [
                                customText(
                                    text: "30 % off",
                                    fontSize: 15.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            Row(
                              children: [
                                customText(
                                    text: "Grocery Shopping",
                                    fontSize: 12.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /**
                       * Image in the Container
                       */
                      Expanded(
                        child: Container(
                          color: Colors.purple,
                          height: 80.h,
                        
                            child: Image.asset("assets/caps.png",fit: BoxFit.fill,)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Container(
                  width: 340.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: homeContainerColor),
                  child: Row(
                    children: [
                      /**
                       * Text in the Container
                       */
                      Padding(
                        padding: EdgeInsets.only(top: 10.h,right: 5.w,left: 15.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                customText(
                                    text: "Welcome to Meecado",
                                    fontSize: 20.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            Row(
                              children: [
                                customText(
                                    text: "30 % off",
                                    fontSize: 15.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            Row(
                              children: [
                                customText(
                                    text: "Grocery Shopping",
                                    fontSize: 12.sp,
                                    textColor: purpleContainer,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /**
                       * Image in the Container
                       */
                      Expanded(
                        child: Container(
                          color: Colors.purple,
                          height: 80.h,

                            child: Image.asset("assets/caps.png",fit: BoxFit.fill,)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h,)


            ],
          ),
        ),
      ),
    );
  }

}


