
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsButton extends StatefulWidget {
   ProductDetailsButton({Key? key,required this.buttonText,required this.buttonColor,required this.function}) : super(key: key);
String buttonText;
int buttonColor;
 Function() function;

  @override
  State<ProductDetailsButton> createState() => _ProductDetailsButtonState();
}

class _ProductDetailsButtonState extends State<ProductDetailsButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      setState(() {
        widget.function;
      });

    },
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(widget.buttonColor))), child:Center(
      child: Text(
        widget.buttonText,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    );
  }
}
