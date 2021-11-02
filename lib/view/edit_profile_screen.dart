import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/customOption.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_home_container.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';

import '../constants.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      drawer:   Drawer(
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
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.h),
            child: Row(
              children: [
               Builder(

                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                        Get.to(EditProfileScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
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
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: customText(
                text: "Edit Profile", textColor: Colors.white, fontSize: 20.sp),
          ),
          CircleAvatar(
            maxRadius: 40.r,
            backgroundImage: AssetImage("assets/profilepic.png"),
          ),
          Expanded(
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    topLeft: Radius.circular(15.r),
                  ),
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage("assets/Vector_2.png"))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 20.w),
                      child: Row(
                        children: [
                          customText(text: "Gender", fontSize: 20.sp),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customHomeContainer(
                            title: "",
                            image: "assets/male.png",
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          customHomeContainer(
                            title: "",
                            image: "assets/female.png",
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          width: 195.w,
                          child: customText(text: "Full Name", fontSize: 20.sp)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.h, horizontal: 100.w),
                      child: customTextFormFiled(text: "Full Name"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          width: 195.w,
                          child: customText(text: "Mobile No", fontSize: 20.sp)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 100.w),
                      child: customTextFormFiled(text: "Mobile no"),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          width: 195.w,
                          child: customText(text: "Date of Birth", fontSize: 20.sp)),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 100.w),
                      child: customTextFormFiled(text: "dd/mm/yy"),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 80.w,vertical: 20.h),
                      child: customButton(text: "Save",textColor: mainTextColor,buttonColor: purpleContainer),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
