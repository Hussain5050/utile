

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utile_app/my_page.dart';
import 'package:utile_app/screens/posdet_ads_edit.dart';
import 'package:utile_app/screens/posted_ads_one.dart';



void main() => runApp(const MyApps());

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',

          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            colorScheme: const ColorScheme.light(primary: Color(0xff00213A)),
            primaryColor: const Color(0xff00213A),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const MyPage(),
    );
  }
}