import 'package:delivery_guy/screens/home/view.dart';
import 'package:delivery_guy/screens/share/my_input.dart';
import 'package:delivery_guy/screens/sign_up/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 896.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login.png'),
                        fit: BoxFit.cover),
                  ),),
                 Padding(
                   padding: EdgeInsetsDirectional.only(top: 30.h),
                   child: Stack(
                    children: [
                      Container(height:240.h,
                        width: 245.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bee.png'),
                          ),
                        ),),
                      Container(
                        padding:EdgeInsets.only(left:120.w, top: 200.h),
                        child:  Text(
                          'Delivery',
                          style: TextStyle(color: Colors.orangeAccent ,fontStyle: FontStyle.italic , fontSize: 28.sp),
                        ),
                      ),SingleChildScrollView(physics: const BouncingScrollPhysics(),
                        child: Container(
                          margin:  EdgeInsetsDirectional.only(start: 35.w,end: 35.w,top: 420.h),
                          child: Column(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyInput(hintText: 'Email'),
                              SizedBox(
                                height: 30.h,
                              ),
                              MyInput(hintText: "Password",isPassword: true),
                              SizedBox(
                                height: 40.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Center(
                                      child:
                                      Text('Sign In',style: TextStyle(
                                          fontSize: 22.sp, fontWeight: FontWeight.w700),)),
                                  SizedBox(width: 30.w),
                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: const Color(0xff4c505b),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));},
                                        icon:  Icon(
                                          Icons.arrow_forward,size: 30.r,
                                        )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignUp()));
                                    },
                                    style: const ButtonStyle(),
                                    child:  Text(
                                      'Sign Up',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.black,
                                          fontSize: 20.sp
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child:   Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),],
                ),
                 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}