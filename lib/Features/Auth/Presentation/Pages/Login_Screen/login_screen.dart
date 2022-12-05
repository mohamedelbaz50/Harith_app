import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Features/Auth/Presentation/Widgets/default_button.dart';
import 'package:harith_app/Features/Auth/Presentation/Widgets/default_form_field.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailOrPhoneController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(width / 15),
            child: Center(
              child: Column(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "الايميل او رقم الهاتف",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          context: context,
                          prefixIcon: Icons.phone,
                          height: height,
                          controller: emailOrPhoneController,
                          inputType: TextInputType.emailAddress,
                          hintText: "ادخل رقم الهاتف او الايميل"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "كلمة المرور",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          context: context,
                          prefixIcon: Icons.lock,
                          height: height,
                          controller: passwordController,
                          inputType: TextInputType.text,
                          hintText: "ادخل كلمة المرور هنا"),
                      Row(
                        children: [
                          Container(
                              width: width / 15,
                              height: height / 15,
                              child: Checkbox(
                                  activeColor: Colors.grey,
                                  checkColor: Colors.white,
                                  value: true,
                                  onChanged: (value) {})),
                          const Spacer(),
                          Text(
                            "هل نسيت كلمة المرور؟",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      defaultButton(
                          context: context,
                          width: width,
                          height: height / 16,
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          text: "تسجيل الدخول"),
                      SizedBox(
                        height: 70.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 1,
                            color: Colors.grey,
                          )),
                          Text("او اكمل باستخدام"),
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 1,
                            color: Colors.grey,
                          )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
