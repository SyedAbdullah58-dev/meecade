import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meecade/view/view_order_screen.dart';

import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
class DeliveryLocationScreen extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();
  /*Location _location = Location();*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: Column(
    children: [
      /**
       * Map
       */
      Stack(

        children: [
          Container(
            height: 424.h,

child: GoogleMap(

  initialCameraPosition: CameraPosition(target:  LatLng(20.5937,  78.9629),
    zoom: 14.4746,
),myLocationEnabled: true,
  onMapCreated:  (GoogleMapController controller) {
    _controller.complete(controller);},

  mapType: MapType.normal,),
          ),
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
                        color: Colors.white,
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
                SizedBox(width: 20.w,),
                Container(
                  decoration: BoxDecoration(
                    color: mainTextColor,
                    borderRadius: BorderRadius.circular(15.r)
                  ),
                  child: Column(
                    children: [
                      customText(text: "Hi, Karan",fontSize: 20.sp,fontWeight: FontWeight.bold),
                      customText(text: "Gul Ahmad Shop",fontSize: 18.sp,),
                    ],
                  ),
                ),
                Expanded(child: Container(),),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepic.png"),
                  maxRadius: 30.r,

                ),
              ],
            ),
          ),
          Positioned(
            bottom: 1.h,
            right: 1.h,
            left: 1.h,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff38315F),


              ),
              height: 65.h,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(Icons.not_listed_location_rounded,color: mainTextColor,size: 30.r,),
                  SizedBox(width: 20.w,),
                  customText(text: "Select Location From Map",textColor: mainTextColor,fontSize: 20.sp,fontWeight: FontWeight.bold),
                ],) ,),
          )
        ],
      ),
      Divider(thickness: 2.h,),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
        child: Row(
          children: [
            customText(text: "please Select Your Destination",fontSize: 20.sp,fontWeight: FontWeight.bold),SizedBox(width: 20.w,),Icon(Icons.shopping_cart_outlined)
          ],
        ),

      ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
          child: Row(
            children: [
              Container(height: 20.h,width: 20.w,
              decoration: BoxDecoration(

              shape: BoxShape.circle,
              border: Border.all(color: mainTextColor,width: 2.w)
              ),
              ), SizedBox(width: 5.w,),customText(text: "Pitstop 1-electronic")
            ],
          ),
        ),
      /**
       * Purple Circle
       */
      Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
          child: Row(
            children: [
              Container(height: 20.h,width: 20.w,
              decoration: BoxDecoration(

              shape: BoxShape.circle,
              border: Border.all(color: purpleContainer,width: 2.w)
              ),
              ), SizedBox(width: 5.w,),
              Container(height: 45.h,width: 330.w,
              decoration: BoxDecoration(
                color: mainTextColor,
                borderRadius: BorderRadius.circular(15.r)
              ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      customText(text: "Gul Ahmad shop",fontSize: 15.sp),Expanded(child: Container()),Icon(Icons.remove_circle,size: 30.r,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      /**
       * Continue button
       */
      SizedBox(height: 50.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(onTap: (){
Get.to(ViewOrderScreen());

          },
            child: Container(

              width: 244.w,

              height: 48.h,

              alignment: Alignment.center,

              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [customText(text: "Continue",textColor: mainTextColor,fontSize: 20.sp),





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
    );
  }
}
