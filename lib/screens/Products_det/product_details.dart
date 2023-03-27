import 'package:delivery_guy/screens/Products_det/component/details_view.dart';
import 'package:delivery_guy/screens/share/bottomBar.dart';
import 'package:delivery_guy/screens/share/my_app_bar.dart';
import 'package:delivery_guy/screens/share/drawer/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({
    Key? key,
      this.state=true,
     this.busy=true ,
    required this.image,
    required this.mail,
    required this.price,
    required this.details,
    required this.location,
    required this.time,
  }) : super(key: key);
   bool state;
   bool busy;
  String image, mail, details, location, time;
  int price;

  @override
  State<ProductDetailsScreen> createState() => _product_detailsState();
}

class _product_detailsState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(
        status: widget.state,
        busy: widget.busy,
      ),
      //MyDrawer(status: widget.state, ),
      backgroundColor: const Color(0xffF5F5F5),
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                width: 200.w,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Order Information',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          ProductDetailsContainer(
                              typeText: 'Mail',
                              text: widget.mail,
                              color: 0xffDBE9FA),
                          SizedBox(
                            height: 5.h,
                          ),
                          ProductDetailsContainer(
                            typeText: 'Price',
                            text: '${widget.price} L.E',
                            color: 0xffEBF4FA,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          ProductDetailsContainer(
                              typeText: 'Details',
                              text: widget.details,
                              color: 0xffF0F8FF),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Delivery Information',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 165.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.r),
                      child: Column(
                        children: [
                          ProductDetailsContainer(
                              typeText: "location",
                              text: widget.location,
                              color: 0xffFFDDCA),
                          SizedBox(
                            height: 10.h,
                          ),
                          ProductDetailsContainer(
                              typeText: "Time",
                              text: widget.time,
                              color: 0xffFFCBA4),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 20.w, vertical: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.state = true;
                        widget.busy = true;
                      });
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(110.w, 50.h)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFF4CAF50))),
                    child: Center(
                      child: Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.state = true;
                        widget.busy = false;
                      });
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(110.w, 50.h)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFFFFF59D))),
                    child: Center(
                      child: Text(
                        "Busy",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.state = false;
                        widget.busy = false;
                      });
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(110.w, 50.h)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFFF44336))),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
