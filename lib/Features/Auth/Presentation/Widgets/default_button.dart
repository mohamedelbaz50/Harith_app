import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget defaultButton(
    {required BuildContext context,
    required double width,
    required double height,
    required Function onPressed,
    required Color color,
    required String text}) {
  return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: color),
      width: width,
      height: height,
      child: TextButton(
          onPressed: () {
            onPressed();
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
            ),
          )));
}
