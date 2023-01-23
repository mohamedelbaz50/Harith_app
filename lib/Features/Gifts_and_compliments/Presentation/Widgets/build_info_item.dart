import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

Widget buildInfoItem(
    {required BuildContext context,
    required double height,
    required TextEditingController controller,
    required String itemTitle,
    required TextInputType inputType,
    required bool expands,
    required var maxLines}) {
  return Padding(
    padding: EdgeInsets.all(5.h),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              itemTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: height,
          child: TextFormField(
            controller: controller,
            keyboardType: inputType,
            expands: expands,
            maxLines: maxLines,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      color: HexColor("#132033"),
                    )),
                hintStyle: Theme.of(context).textTheme.bodyText2),
          ),
        )
      ],
    ),
  );
}
