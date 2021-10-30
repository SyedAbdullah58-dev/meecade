import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_home_container.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:meecade/widgets/custom_text_form_field.dart';

import '../constants.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                  Get.to(EditProfileScreen());
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
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: customText(
                text: "edit Profile", textColor: Colors.white, fontSize: 20.sp),
          ),
          CircleAvatar(
            maxRadius: 30.r,
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
                        SizedBox(width: 20.w,),
                        customHomeContainer(
                          title: "",
                          image: "assets/female.png",
                        )
                      ],
                    ),
                  ),
                  customText(text: "Full name"),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
                    child: customTextFormFiled(text: "Full Name"),
                  ),

                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
                    child: customTextFormFiled(text: "Phone no"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
