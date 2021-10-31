import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:meecade/controllers/bottom_nav_bar_controller.dart';
import 'package:meecade/controllers/cart_controller.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:meecade/widgets/custom_button.dart';
import 'package:meecade/widgets/custom_text.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'continue_cart_screen.dart';

class AddtoCartScreen extends StatelessWidget {
CartController controller=Get.put(CartController());
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
          )
        ],
      ),
      body: Container(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /**
               * Image of the product
               */
              Container(
                width: 250.w,
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/headset.png")),
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* Container(height: 20.h,width: 20.h,decoration: BoxDecoration(
        color: purpleContainer,
        shape: BoxShape.circle
      ),),
      Container(height: 20.h,width: 20.h,decoration: BoxDecoration(
        color: purpleContainer,
        shape: BoxShape.circle
      ),),*/
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            text: "Awsome Electronics",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                        customText(
                            text: "Head Phones",
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                        customText(
                            text: "Rs 650",
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                        GetBuilder<CartController>(
                            builder: (controller) {
                            return Container(
                              padding: EdgeInsets.only(right: 30.w),
                              alignment: Alignment.centerRight,
                              width: Get.width*0.9,
                              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  InkWell(
                                    onTap: (){
                                      controller.counter+=1;
                                      controller.update();

                                    },
                                    child: Icon(
                                      Icons.add_circle,
                                      size: 40.r,
                                    ),
                                  ),
                                  customText(text: controller.counter.toString()),
                                  InkWell(
                                    onTap: (){
                                      if(controller.counter!=0)
                                      controller.counter-=1;
                                      controller.update();
                                    },
                                    child: Icon(
                                      Icons.remove_circle,
                                      size: 40.r,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 5.h,left: 20.w),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            text: "Product Reviews",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                        SizedBox(height: 5.h,),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 4,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                          itemBuilder: (context, _) => Icon(
                            Icons.star_border,size: 5.r,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        customText(
                            text: "Product Details",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                        /**
                         * Button to add to cart
                         */


                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: (){
                    Get.to(ContinueCartScreen());

                  },
                    child: Container(

                      width: 244.w,

                      height: 48.h,

                      alignment: Alignment.center,

                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [customText(text: "Add to Cart",textColor: mainTextColor,fontSize: 20.sp),

                          SizedBox(width: 20.w,),

                          Icon(Icons.shopping_cart,color: mainTextColor,)



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
