import 'package:flutter/cupertino.dart';
import 'package:meecade/constants.dart';
import 'package:meecade/widgets/common_scaffold.dart';
import 'package:meecade/widgets/custom_main_container.dart';
import 'package:meecade/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OtpFirstScreen extends StatelessWidget {
  const OtpFirstScreen({Key? key}) : super(key: key);

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
        CustomMainContainer(child: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding:  EdgeInsets.only(top: 50.h),
          child: customText(
            text: "ENTER YOUR Mobile Number",textColor: gradientColors[0],fontSize: 26.sp
          ),
        )
          ],),
        ),),


      ]

        ,),

    );
  }
}
