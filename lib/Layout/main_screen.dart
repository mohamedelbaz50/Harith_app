import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Layout/widgets/build_service_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: 294.w,
                height: 138.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Theme.of(context).primaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "حسابى",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white, fontSize: 10.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          "135645756876956",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white, fontSize: 15.sp),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.copy,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Text(
                      "المبلغ الكلى",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white, fontSize: 10.sp),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "135645",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      color: Colors.white, fontSize: 20.sp),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "جنيه مصرى",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      color: Colors.white, fontSize: 10.sp),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            padding: EdgeInsets.all(4.h),
                            width: 35.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: const Image(
                                image:
                                    AssetImage("assets/images/pie-chart.png")),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Text(
              "الخدمات",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildServiceItem(
                    context: context,
                    image: "assets/images/Group 55.png",
                    serviceName: "محفظة حارث"),
                buildServiceItem(
                    context: context,
                    image: "assets/images/Group 93.png",
                    serviceName: "استثمر ووفر"),
                buildServiceItem(
                    context: context,
                    image: "assets/images/Group 95.png",
                    serviceName: "فواتيرك ورصيدك"),
                buildServiceItem(
                    context: context,
                    image: "assets/images/Group 63.png",
                    serviceName: "تاجر واشترى")
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildServiceItem(
                    context: context,
                    image: "assets/images/money-protection.png",
                    serviceName: "حافظ على فلوسك"),
                buildServiceItem(
                    context: context,
                    image: "assets/images/Group 96.png",
                    serviceName: "الهدايا والمجاملات"),
                buildServiceItem(
                    context: context,
                    image: "assets/images/Car.png",
                    serviceName: "موصلاتك"),
              ],
            ),
            Row(
              children: [
                Text(
                  "المعاملات الاخيرة",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "جميع المعاملات",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
