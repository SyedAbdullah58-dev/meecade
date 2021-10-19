import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
class CustomMainContainer extends StatelessWidget {
  CustomMainContainer({
    this.child
  }) ;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 300.h,
              width:380.w ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
                  color: mainTextColor
              ),
            ),
            Container(
              height: 300.h,
              width:380.w ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.r),bottomRight: Radius.circular(20.r)),
                  color:gradientColors[0]
              ),
            ),
          ],
        ),
        Positioned(
          top: 10.h,
          child: Container(
              height: 580.h,
              width:380.w ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: purpleContainer
              ),
              child: child),
        ),
      ],
    );
  }
}
