import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLoginMethod(
    {required BuildContext context,
    required Color backgroundColor,
    required String image,
    required String methodName,
    required Function onPressed}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        InkWell(
          onTap: () {
            onPressed();
          },
          child: Container(
            padding: EdgeInsets.all(10.h),
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(50.w)),
            child: Image(fit: BoxFit.contain, image: AssetImage(image)),
          ),
        ),
        Text(
          methodName,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ),
  );
}
