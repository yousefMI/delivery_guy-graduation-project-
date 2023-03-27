import 'package:delivery_guy/screens/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => child!,
      designSize: const Size(414, 896),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyLogin(),
      ),
    );
  }
}
