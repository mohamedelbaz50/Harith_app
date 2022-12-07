import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark)),
    primaryColor: HexColor("#27AE61"),
    fontFamily: "Droid Arabic",
    textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 14.sp, color: Colors.black),
        headline3: TextStyle(
            fontSize: 42.sp, fontWeight: FontWeight.bold, color: Colors.black),
        headline2: TextStyle(
            fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.black),
        bodyText2: TextStyle(fontSize: 12.sp, color: Colors.grey),
        headline1: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: HexColor("#132033"))));
