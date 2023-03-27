import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //toolbarHeight: 70.h,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: const Text(
        'Home',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
