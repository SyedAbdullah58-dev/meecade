import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meecade/view/order_done_screen.dart';
import 'package:meecade/widgets/customOption.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
class ViewOrderScreen extends StatelessWidget {

  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
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
             customOption(title: "Logout",icon: Icon(Icons.logout,color: mainTextColor,)),
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
        child: Column(
          children: [
            /**
             * Map
             */
            Stack(

              children: [
                Container(
                  height: 600.h,

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
                     Builder(

                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                            Scaffold.of(context).openDrawer();
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
                          );
                        }
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

              ],
            ),

            /**
             * Purple Circle
             */


            /**
             * Continue button
             */
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){
                  Get.to(OrderDoneScreen()  );
                },
                  child: Container(
                    width: 244.w,
                    height: 48.h,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [customText(text: "View your Order",textColor: mainTextColor,fontSize: 20.sp),
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
