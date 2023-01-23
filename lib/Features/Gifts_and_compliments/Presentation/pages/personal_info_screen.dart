import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Core/Shared_Widgets/navigate_methods.dart';
import 'package:harith_app/Features/Gifts_and_compliments/Presentation/Widgets/build_gift_item.dart';
import 'package:harith_app/Features/Gifts_and_compliments/Presentation/Widgets/build_info_item.dart';

import 'event_info_screen.dart';

class PersonalInfoScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController yourPhoneController = TextEditingController();
  TextEditingController targetphoneController = TextEditingController();
  TextEditingController targetAddressController = TextEditingController();
  TextEditingController userAccController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الهدايا و المجاملات",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Theme.of(context).primaryColor.withOpacity(0.30)),
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                navigateTo(context: context, widget: EventInfoScreen());
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildInfoItem(
                    maxLines: 1,
                    expands: false,
                    inputType: TextInputType.phone,
                    context: context,
                    height: height / 16,
                    controller: yourPhoneController,
                    itemTitle: "ادخل رقم هاتفك"),
                buildInfoItem(
                    maxLines: 1,
                    expands: false,
                    inputType: TextInputType.phone,
                    context: context,
                    height: height / 16,
                    controller: targetphoneController,
                    itemTitle: "ادخل رقم المرسل اليه"),
                buildInfoItem(
                    maxLines: 1,
                    expands: false,
                    inputType: TextInputType.streetAddress,
                    context: context,
                    height: height / 16,
                    controller: targetAddressController,
                    itemTitle: "عنوان المرسل اليه"),
                buildInfoItem(
                    maxLines: 1,
                    expands: false,
                    inputType: TextInputType.emailAddress,
                    context: context,
                    height: height / 16,
                    controller: userAccController,
                    itemTitle: "حساب المستخدم(اختيارى)"),
                Text(
                  "اختر هدية المجامله",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/Group 806.png",
                        serviceName: "كاش"),
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/baby-carriage-solid.png",
                        serviceName: "سبوع"),
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/birthday-cake-solid.png",
                        serviceName: "عيد ميلاد")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/newlyweds.png",
                        serviceName: "فرح"),
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/success.png",
                        serviceName: "تهنئة نجاح"),
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/patient.png",
                        serviceName: "زيارة مريض")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildGiftItem(
                        context: context,
                        image: "assets/images/gifts/XMLID_933_.png",
                        serviceName: "سجل المناسبة"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
