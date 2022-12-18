import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: 294.w,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Text(
            "الخدمات",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          )
        ],
      ),
    );
  }
}
