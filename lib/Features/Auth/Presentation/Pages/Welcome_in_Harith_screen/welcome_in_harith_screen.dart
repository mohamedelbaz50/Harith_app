import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Register_Screen/register_screen.dart';
import 'package:harith_app/Features/Auth/Presentation/Widgets/in_welcome_button.dart';

import '../../Widgets/navigate_methods.dart';
import '../Login_Screen/login_screen.dart';

class WelcomeInHarithScreeen extends StatelessWidget {
  const WelcomeInHarithScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    navigateTo(context: context, widget: LoginScreen());
                  },
                  child: Container(
                    width: 67.w,
                    height: 22.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "تخطى",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 4.5,
            ),
            Text(
              "اهلا بيك",
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              children: [
                Text("فى", style: Theme.of(context).textTheme.headline3),
                const SizedBox(
                  width: 5,
                ),
                Text("حارث",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Theme.of(context).primaryColor))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Column(
                children: [
                  inWelcomeButton(
                      width: 248.w,
                      height: 50.h,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        navigateTo(context: context, widget: LoginScreen());
                      },
                      text: "تسجيل الدخول"),
                  inWelcomeButton(
                      width: 248.w,
                      height: 50.h,
                      color: Colors.grey.withOpacity(0.4),
                      fontColor: Colors.black,
                      onPressed: () {
                        navigateTo(context: context, widget: RegisterScreen());
                      },
                      text: " انشاء حساب جديد"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
