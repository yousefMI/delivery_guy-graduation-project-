import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsContainer extends StatelessWidget {
  ProductDetailsContainer({Key? key,required this.typeText,required this.text,required this.color}) : super(key: key);
String typeText;
String text;
int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color:  Color(color),
      ),
      child:  Padding(
        padding:
        EdgeInsetsDirectional.symmetric(horizontal: 20.w),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '| $typeText |',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
           // SizedBox(width: 8.w,),
            Text(
             textScaleFactor:text.characters.length>30?0.7.r:text.characters.length>15? 1.r:1.2.r,
              text,
              style: TextStyle(
                fontSize: 20.sp,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
