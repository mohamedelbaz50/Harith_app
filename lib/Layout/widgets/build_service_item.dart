import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildServiceItem(
    {required BuildContext context,
    required String image,
    required String serviceName}) {
  return Column(
    children: [
      Container(
        width: 60.w,
        height: 58.h,
        padding: EdgeInsets.all(10.h),
        margin: EdgeInsets.all(6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),

              blurRadius: 6,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Center(child: Image(image: AssetImage(image))),
      ),
      Text(
        serviceName,
        style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10.sp),
      )
    ],
  );
}
