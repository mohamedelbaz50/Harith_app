import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Core/Shared_Widgets/default_button.dart';
import 'package:harith_app/Features/Gifts_and_compliments/Presentation/Widgets/build_info_item.dart';

class EventInfoScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController eventNameController = TextEditingController();
  TextEditingController eventDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
              onPressed: () {},
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
              mainAxisSize: MainAxisSize.max,
              children: [
                buildInfoItem(
                    maxLines: 1,
                    expands: false,
                    context: context,
                    height: height / 16,
                    controller: eventNameController,
                    itemTitle: "ادخل اسم المناسبة",
                    inputType: TextInputType.emailAddress),
                SizedBox(
                  height: 20.h,
                ),
                buildInfoItem(
                    maxLines: null,
                    expands: true,
                    context: context,
                    height: height / 4,
                    controller: eventDetailsController,
                    itemTitle: "تفاصيل المناسبه",
                    inputType: TextInputType.emailAddress),
                defaultButton(
                    context: context,
                    width: width,
                    height: height,
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    text: "اخنيار الهدية")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
