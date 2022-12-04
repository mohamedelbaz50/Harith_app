import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(width / 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "تسجيل الدخول الى حسابك",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    "الايميل او رقم الهاتف",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
