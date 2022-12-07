import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget inWelcomeButton(
    {required double width,
    required double height,
    required Color color,
    required Function onPressed,
    required String text,
    Color fontColor = Colors.white}) {
  return Container(
      margin: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(19), color: color),
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
              color: fontColor,
            ),
          )));
}
