import 'package:delivery_guy/screens/dashBoard/view.dart';
import 'package:delivery_guy/screens/share/my_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  _MySignUp createState() => _MySignUp();
}

class _MySignUp extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: 200.h,
              width: 200.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bee.png'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.w, top: 170.h),
              child: Text(
                'Delivery',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.sp),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 160.w, top: 60.h),
              child: Text(
                'Create account',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 40.sp),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 35.w,
                      ),
                      child: Column(
                        children: [
                          MyInput(
                            hintText: 'Name',
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          MyInput(hintText: "Email"),
                          SizedBox(
                            height: 25.h,
                          ),
                          MyInput(hintText: "Password", isPassword: true),
                          SizedBox(
                            height: 25.h,
                          ),
                          MyInput(
                            hintText: "Confirm Password",
                            isPassword: true,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          MyInput(hintText: "Phone"),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Center(
                                  child: Text(
                                'Sign Up      ',
                                style: TextStyle(
                                    fontSize: 27.sp,
                                    fontWeight: FontWeight.w700),
                              )),
                              CircleAvatar(
                                radius: 30.r,
                                backgroundColor: const Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const DashBoardScreen()));
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: const ButtonStyle(),
                                child:  Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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