import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        child: GNav(
            selectedIndex: 0,
            gap: 8.w,
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.orangeAccent.shade700,
            padding:  EdgeInsets.all(16.r),
            tabs:  [
               GButton(
                icon: Icons.home_filled,iconSize: 30,
                text: 'Home',textSize: 30.sp,
              ),
               GButton(
                icon: Icons.airport_shuttle_sharp,iconSize: 30,
                text: 'Delivery',textSize: 30.sp,
              ),
               GButton(
                icon: Icons.watch_later_outlined,iconSize: 30,
                text: 'Timer',textSize: 30.sp,
              ),
              GButton(
                icon: Icons.account_circle_outlined,iconSize: 30,
                text: 'Account',textSize: 30.sp,
              ),
            ]),
      ),
    );
  }
}
