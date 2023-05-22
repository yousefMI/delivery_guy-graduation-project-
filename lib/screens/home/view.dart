// ignore_for_file: must_be_immutable

import 'package:delivery_guy/screens/Products_det/product_details.dart';
import 'package:delivery_guy/screens/home/components/status_number.dart';
import 'package:delivery_guy/screens/home/model.dart';
import 'package:delivery_guy/screens/home/components/order_details.dart';
import 'package:delivery_guy/screens/share/bottomBar.dart';
import 'package:delivery_guy/screens/share/drawer/view.dart';
import 'package:delivery_guy/screens/share/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, this.busy = true, this.state = true}) : super(key: key);
  final model = DataJoe({});
  late bool busy;
  late bool state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      drawer: MyDrawer(status: state, busy: busy),
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              // الكونتينر اللى فيه الكومبونات بتاعت ال status
              child: Container(
                width: double.infinity,
                height: 305.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                // statusComponent هى الجزء الاولانى اللى فيه الstatus
                child: const StatusComponent(),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'New Orders',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 10.h),
                  child: OrderDetails(
                    imagePath: model.imagePath.elementAt(index),
                    orderName: model.orderName.elementAt(index),
                    orderAdress: model.orderAdress.elementAt(index),
                    orderTime: model.orderTime.elementAt(index),
                    Screen: ProductDetailsScreen(
                      busy: busy,
                      state: state,
                      image: model.imagePath.elementAt(index),
                      mail: model.mail.elementAt(index),
                      price: model.price.elementAt(index),
                      details: model.details.elementAt(index),
                      location: model.orderAdress.elementAt(index),
                      time: model.orderTime.elementAt(index),
                    ),
                  ),
                ),
                itemExtent: 160.h,
                itemCount: model.imagePath.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}