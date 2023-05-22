import 'package:delivery_guy/screens/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 350.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dv.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r))),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(
                      height: 40.h,
                    ),
                     Text(
                      'Get The Fastest\n Order Delivery',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.sp),
                    ),
                     SizedBox(
                      height: 30.h,
                    ),
                     Text(
                      'Completely empower user-centric',
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                     SizedBox(
                      height: 4.h,
                    ),
                     Text(
                      'innovation than highly efficient',
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                     SizedBox(
                      height: 4.h,
                    ),
                     Text(
                      'initiatives facilitate',
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                     SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180.r),
                        color: Colors.orangeAccent,
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
