import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({
    Key? key,
    required this.imagePath,
    required this.orderName,
    required this.orderAdress,
    required this.orderTime,
    required this.Screen,
  }) : super(key: key);
  String imagePath, orderName, orderAdress, orderTime;
  Widget Screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 130.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120.w,
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderName,
                  style: TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.orange,
                      size: 15,
                    ),

                       Text(orderAdress, overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                             fontSize: orderAdress.length > 25 ?12: 15
                          )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Text(orderTime, style: TextStyle(fontSize: 15)),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0.r))),
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.orange.withOpacity(0.7),
                      )),
                  onPressed: () {
                    //Screen;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen));
                  },
                  child: Center(
                      child: Text(
                        'Order Details',
                        style: TextStyle(fontSize: 15),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
