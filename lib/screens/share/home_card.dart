import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
    HomeCard({Key? key,required this.image,required this.stateDlivery,required this.numberOfDliverryState,required this.colorValue}) : super(key: key);
Widget image;
String stateDlivery;
String numberOfDliverryState;
int colorValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130.w,
        height: 130.h,
        decoration: BoxDecoration(
          color: Color(colorValue).withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
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
              Text(stateDlivery),
              const Spacer(
                flex: 1,
              ),
              Text(numberOfDliverryState),
          const Spacer(
          flex: 2,)
            ]));
  }
}
