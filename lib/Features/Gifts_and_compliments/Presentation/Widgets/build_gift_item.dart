import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildGiftItem(
    {required BuildContext context,
    required String image,
    required String serviceName}) {
  return Container(
    width: MediaQuery.of(context).size.width / 5.5,
    height: MediaQuery.of(context).size.height / 10,
    padding: EdgeInsets.all(8.h),
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
            child: Container(
          width: 30.w,
          height: 30.h,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
        )),
        const SizedBox(
          height: 2,
        ),
        Text(
          serviceName,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 7.sp, overflow: TextOverflow.ellipsis),
        )
      ],
    ),
  );
}
