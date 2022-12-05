import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultFormField(
    {required BuildContext context,
    required IconData prefixIcon,
    required double height,
    required var controller,
    required TextInputType inputType,
    required String hintText}) {
  return SizedBox(
    height: height / 17,
    child: TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: HexColor("#707070B3"))),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText2),
    ),
  );
}
