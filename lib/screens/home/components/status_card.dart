import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusComponentCard extends StatelessWidget {
   StatusComponentCard({Key? key,required this.color,required this.image,required this.name,required this.number}) : super(key: key);
int color;
Widget image;
String name;
int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 130.h,
      decoration: BoxDecoration(
        color: Color(color).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Spacer(
            flex: 2,
          ),
          image,
          const Spacer(
            flex: 1,
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Text(name,overflow: TextOverflow.ellipsis,)),
          const Spacer(
            flex: 1,
          ),
          Text('$number',overflow: TextOverflow.ellipsis,),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}