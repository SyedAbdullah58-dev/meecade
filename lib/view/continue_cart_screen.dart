import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meecade/controllers/bottom_nav_bar_controller.dart';
import 'package:meecade/controllers/cart_controller.dart';
import 'package:meecade/view/order_detail_screen.dart';
import 'package:meecade/widgets/custom_text.dart';
import '../constants.dart';

class ContinueCartScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainTextColor,
        title: Text("Gul Ahmed Shop"),
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
          ),SizedBox(width: 20.w,)
        ],
      ),
      body: Container(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
     child: Column(children: [
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
         child: Row(
           children: [
             customText(text: "Your Order",fontSize: 20.sp,fontWeight: FontWeight.bold),
           ],
         ),
       ),
       /**
        * The Yellow Container
        */
       InkWell(
         onTap: (){
           Get.to(OrderDetailScreen());
         },
         child: Container(height: 110.h,
         decoration: BoxDecoration(color: mainTextColor),
         child: Row(children: [
           SizedBox(width: 20.w,),

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
           SizedBox(width: 20.w,),
           Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                 SizedBox(width: 120.w,),
                   GetBuilder<CartController>(
                       builder: (controller) {
                         return Container(

                           padding: EdgeInsets.only(right: 30.w),
                           alignment: Alignment.centerRight,
                           child: Row(mainAxisAlignment: MainAxisAlignment.end,
                             children: [

                               InkWell(
                                 onTap: (){
                                   if(controller.counter!=0)
                                     controller.counter-=1;
                                   controller.update();
                                 },
                                 child: Icon(
                                   Icons.remove_circle,
                                   size: 20.r,
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 2.w),
                                 child: customText(text: controller.counter.toString()),
                               ),

                               InkWell(
                                 onTap: (){
                                   controller.counter+=1;
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
                       }
                   )
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
         ],),

         ),
       ),
       Divider(thickness: 1.h,height: 0.1.h,),
       Container(height: 110.h,
       decoration: BoxDecoration(color: mainTextColor),
       child: Row(children: [
         SizedBox(width: 20.w,),
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
         SizedBox(width: 20.w,),
         Column(crossAxisAlignment: CrossAxisAlignment.start,
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
               SizedBox(width: 120.w,),
                 GetBuilder<CartController>(
                     builder: (controller) {
                       return Container(

                         padding: EdgeInsets.only(right: 30.w),
                         alignment: Alignment.centerRight,
                         child: Row(mainAxisAlignment: MainAxisAlignment.end,
                           children: [

                             InkWell(
                               onTap: (){
                                 if(controller.counter!=0)
                                   controller.counter-=1;
                                 controller.update();
                               },
                               child: Icon(
                                 Icons.remove_circle,
                                 size: 20.r,
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.symmetric(horizontal: 2.w),
                               child: customText(text: controller.counter.toString()),
                             ),

                             InkWell(
                               onTap: (){
                                 controller.counter+=1;
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
                     }
                 )
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
       ],),
       ),
       Expanded(child: Container()),
       Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: gradientColors,
             begin: Alignment.centerLeft,
             end: Alignment.centerRight
           )
         ),
         height: 65.h,
         child:Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             customText(text: "Total",textColor: purpleContainer,fontSize: 20.sp,fontWeight: FontWeight.bold),
             SizedBox(width: 45.w,),
             customText(text: "Rs 650",textColor: purpleContainer,fontSize: 20.sp,fontWeight: FontWeight.bold),
             SizedBox(width: 20.w,),
           ],) ,),
       Container(
         decoration: BoxDecoration(
           color: Color(0xff38315F),
         ),
         height: 65.h,
         child:Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.shopping_bag_rounded,color: mainTextColor,),SizedBox(width: 5.w,),
             customText(text: "Keep Shopping",textColor: mainTextColor,fontSize: 20.sp,fontWeight: FontWeight.bold),
             SizedBox(width: 20.w,),
             VerticalDivider(color: mainTextColor,thickness: 2.w,),
             SizedBox(width: 20.w,),
             Icon(Icons.check_circle,color: mainTextColor,),SizedBox(width: 5.w,),
             customText(text: "Checkout",textColor: mainTextColor,fontSize: 20.sp,fontWeight: FontWeight.bold),
           ],) ,)
     ],),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Color(0xffAA74B1),
        unselectedItemColor: Color(0xff38315F),
        currentIndex: BottomNavigationPageController.to.currentIndex.value,
        onTap: BottomNavigationPageController.to.changePage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: homeContainerColor,
            icon: Icon(Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_shared,
              ),
              label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );

  }
}
