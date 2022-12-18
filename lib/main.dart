import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Core/Themes/light_theme.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Login_Screen/login_screen.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Splash_screen/splash_screen.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Welcome_in_Harith_screen/welcome_in_harith_screen.dart';

import 'Layout/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return Directionality(
                  textDirection: TextDirection.rtl, child: child!);
            },
            theme: lightTheme,
            home: const LayoutScreen(),
          );
        });
  }
}
