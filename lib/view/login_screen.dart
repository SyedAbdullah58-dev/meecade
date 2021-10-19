import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meecade/widgets/custom_main_container.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 68.w,right: 68.w),
          child: Container(
            height: 250.h,
            width: 291.w,
            decoration: BoxDecoration(
                image:DecorationImage(
                    image:  AssetImage("assets/meecado.png")
                )
            ),
          ),
        ),
     CustomMainContainer(child: Column(children: [
       Padding(

         padding: EdgeInsets.only(left: 64.w,top: 20.h),
         child: Container(
             width: 211.w,
             height: 40.h,
             child: Text("Login",style: TextStyle(fontSize: 36.sp,color: gradientColors[0],),),),
       )
     ],),),


      ]

        ,),

    );
  }
}

