import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyInput extends StatelessWidget {
   MyInput({Key? key,required this.hintText,this.isPassword=false}) : super(key: key);
String hintText;
bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      obscureText: isPassword?true:false,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ), focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(
          color: Colors.black,
        ),
      ),),

    );
  }
}
