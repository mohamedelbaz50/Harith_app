import 'package:flutter/material.dart';
import 'package:harith_app/Core/Themes/light_theme.dart';
import 'package:harith_app/Features/Auth/Presentation/Pages/Login_Screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const LoginScreen(),
    );
  }
}
