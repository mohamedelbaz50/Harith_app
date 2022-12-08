import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Login_Screen/login_screen.dart';

import '../../Widgets/build_login_method.dart';
import '../../Widgets/default_button.dart';
import '../../Widgets/default_form_field.dart';
import '../../Widgets/navigate_methods.dart';

class RegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailOrPhoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
              child: Column(children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              "تسجيل مستخدم جديد",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 28.h,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "الايميل او رقم الهاتف",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
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
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              defaultFormField(
                  context: context,
                  prefixIcon: Icons.lock,
                  height: height,
                  controller: passwordController,
                  inputType: TextInputType.visiblePassword,
                  hintText: "ادخل كلمة المرور هنا"),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "تأكيد كلمة المرور",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              defaultFormField(
                  context: context,
                  prefixIcon: Icons.lock,
                  height: height,
                  controller: confirmPasswordController,
                  inputType: TextInputType.visiblePassword,
                  hintText: "تأكيد كلمة المرور"),
              SizedBox(
                height: 40.h,
              ),
              defaultButton(
                  context: context,
                  width: width,
                  height: height / 16,
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  text: "تسجيل الان"),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 1,
                    color: Colors.grey,
                  )),
                  const Text("او سجل باستخدام"),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 1,
                    color: Colors.grey,
                  )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                buildLoginMethod(
                    onPressed: () {},
                    context: context,
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.1),
                    image: "assets/images/login_methods/Asset 3.png",
                    methodName: "جوجل"),
                buildLoginMethod(
                    onPressed: () {},
                    context: context,
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.1),
                    image: "assets/images/login_methods/Asset 2.png",
                    methodName: "فيسبوك")
              ]),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("اذا كنت مسجل من قبل",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextButton(
                        onPressed: () {
                          navigateTo(context: context, widget: LoginScreen());
                        },
                        child: Text(
                          "سجل الدخول",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              )
            ])
          ])),
        ),
      ),
    ));
  }
}
