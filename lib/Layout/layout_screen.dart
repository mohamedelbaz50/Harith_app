import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harith_app/Layout/cubit/layout_cubit.dart';
import 'package:harith_app/Layout/main_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutCubitState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            body: const MainScreen(),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                  left: 25.w, right: 25.w, top: 12.h, bottom: 30.h),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),

                      blurRadius: 10,
                      offset: const Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BottomNavigationBar(
                      currentIndex: cubit.currentIndex,
                      onTap: ((index) {
                        cubit.changeBottomNavIndex(index);
                      }),
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "الرئيسيه"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.wallet), label: "محفظتك"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.calendar_month), label: "نوته"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.notifications),
                            label: "الاشعارات"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.more_horiz), label: "المزيد")
                      ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
