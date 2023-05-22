import 'package:delivery_guy/screens/home/components/status_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusComponent extends StatelessWidget {
  const StatusComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              // ان دى ال card اللى جوة status component
              StatusComponentCard(
                  color: 0xFF18FFFF,
                  image: const Icon(Icons.airport_shuttle_sharp),
                  name: 'Complete Delivery',
                  number: 27),
              const Spacer(
                flex: 2,
              ),
              StatusComponentCard(
                  color: 0xFFFFFF00,
                  image: const Icon(Icons.delivery_dining_outlined),
                  name: 'Pending Delivery',
                  number: 9),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              StatusComponentCard(
                  color: 0xFFFF4081,
                  image: const Icon(Icons.airport_shuttle_sharp),
                  name: 'Cancel Delivery',
                  number: 5),
              const Spacer(
                flex: 2,
              ),
              StatusComponentCard(
                  color: 0xFF40C4FF,
                  image: const Icon(Icons.delivery_dining_outlined),
                  name: 'Return Delivery',
                  number: 10),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
