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
                icon: Icons.home_filled,
                text: 'Home',
              ),
              GButton(
                icon: Icons.airport_shuttle_sharp,
                text: 'Delivery',
              ),
              GButton(
                icon: Icons.watch_later_outlined,
                text: 'Timer',
              ),
              GButton(
                icon: Icons.account_circle_outlined,iconSize: 30.sp,
                text: 'Account',textSize: 30.sp,
              ),
            ]),
      ),
    );
  }
}
