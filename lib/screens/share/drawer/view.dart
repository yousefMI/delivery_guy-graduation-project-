import 'package:delivery_guy/screens/home/view.dart';
import 'package:delivery_guy/screens/login/view.dart';
import 'package:flutter/material.dart';
import 'package:delivery_guy/Screens/share/drawer/components/ButtonDrawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({
    Key? key,
    this.status = true,
    this.busy = true,
  }) : super(key: key);
  bool status;
  bool busy;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding:  EdgeInsetsDirectional.only(bottom: 20.h),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: 200.h,
                  width: 400.w,
                  margin:  EdgeInsets.only(bottom: 50.h),
                  decoration:  BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r),
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: Image.asset('assets/images/human.png',
                          fit: BoxFit.fitHeight, height: 100.h, width: 100.w),
                    ),
                    CircleAvatar(
                      maxRadius: 10.r,
                      backgroundColor: widget.status && widget.busy
                          ? Colors.green
                          : widget.status
                              ? Colors.yellow
                              : Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
           Text(
            'Kero Ragy',
            style: TextStyle(fontSize: 25.sp),
          ),
           SizedBox(height: 10.h),
           Text(
            'example@gmail.com',
            style: TextStyle(fontSize: 15.sp, color: Colors.grey),
          ),
           SizedBox(height: 30.h),
          ButtonDrawer(
            nextScreen: HomeScreen(
              busy: widget.busy,
              state: widget.status,
            ),
            image: const Icon(
              Icons.person,
            ),
            colorValue: 0xff6ACDA9,
            buttonText: 'profile',
          ),
          ButtonDrawer(
            nextScreen: HomeScreen(
              busy: widget.busy,
              state: widget.status,
            ),
            image: const Icon(Icons.key),
            colorValue: 0xffEB5B29,
            buttonText: 'Change Password',
          ),
          ButtonDrawer(
            nextScreen: HomeScreen(
              busy: widget.busy,
              state: widget.status,
            ),
            image: const Icon(Icons.access_time_rounded),
            colorValue: 0xffEBD929,
            buttonText: 'History',
          ),
          ButtonDrawer(
            nextScreen: HomeScreen(
              busy: widget.busy,
              state: widget.status,
            ),
            image: const Icon(Icons.chat_bubble_outline_rounded),
            colorValue: 0xffD781D3,
            buttonText: 'Support',
          ),
          ButtonDrawer(
            nextScreen: const MyLogin(),
            image: const Icon(Icons.logout_sharp),
            colorValue: 0xff60139D,
            buttonText: 'Log Out',
          ),
        ],
      ),
    );
  }
}