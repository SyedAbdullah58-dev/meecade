import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_text.dart';
import '../constants.dart';

class customHomeContainer extends StatelessWidget {
   customHomeContainer({
   this.title,
     this.image
  }) ;
String? title;
String? image;
  @override
  Widget build(BuildContext context) {
    return Container(width: 90.w,height: 85.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: homeContainerColor,
          borderRadius: BorderRadius.circular(15.r)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(image??"assets/grocery_1.png" ,width: 40.w,height: 40.h,),
     SizedBox(height: 2.h,),
     customText(text: title,fontSize: 12.sp)

      ],),
    );
  }
}